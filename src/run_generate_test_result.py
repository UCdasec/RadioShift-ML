import os
import json
import numpy as np

from torch.utils.data import DataLoader
from model_utils import predict
from dataset_utils import radio_dataset
from model_zoo import VGG10, VGG10_quant
from model_zoo import print_model_tree, load_model_pth
from test_report_utils import testing_result, get_average_accuracy, plot_acc_over_snr_from_test_result, sort_by_keyword_priority
from test_report_utils import get_cm, plot_cm

def load_json(json_file:str)->dict:
    with open(json_file,'r') as f:
        data = json.load(f)
    if type(data) == dict:
        return data
    return None

def get_test_indices_from_json(json_path:str)->list[int]:
    return load_json(json_path)['test_indices']

def write_test_result(model,test_loader, npz_path, model_to_dataset_mapping=None, use_snr=True):
    y_pred, y_true, snrs = predict(model, test_loader, model_output_mapping=model_to_dataset_mapping,use_snr=use_snr)
    result=testing_result(y_pred,y_true,snrs,use_snr)
    result.save_file(npz_path)

def load_test_result(test_result_pth:str)->testing_result:
    return testing_result.load_file(test_result_pth)

def write_json(json_file:str,data:dict):
    with open(json_file,'w') as f:
        json.dump(data,f, ensure_ascii=False, indent=4)

def generate_raw_test_result(build_dir:str,
                             result_path:str,
                             dataset:radio_dataset,
                             ):

    if not os.path.exists(build_dir):
        print(f"{build_dir} does not exist")
        return

    test_dir = result_path
    os.makedirs(test_dir,exist_ok=True)

    num_classes = len(np.unique(dataset.all_mod))
    write_json(f"{build_dir}/test_indices.json",{"test_indices":dataset.test_indices})
    # ──────────────────────────────────────────────────────────────
    # resolve model output mapping to local dataset mapping
    model_to_global=load_json(f"{build_dir}/model_output_mapping.json")

    model_to_dataset={}
    for (k,v) in model_to_global.items():
        model_to_dataset[k]=dataset.mod_to_idx(v)
  
    # ──────────────────────────────────────────────────────────────
    models_dict={
        "32bit":VGG10(output_size=num_classes),
        "8bit" :VGG10_quant(output_size=num_classes,w_bits=8,a_bits=8),
        "4bit" :VGG10_quant(output_size=num_classes,w_bits=4,a_bits=4),
        "2bit" :VGG10_quant(output_size=num_classes,w_bits=2,a_bits=2),
    }

    test_loader = DataLoader(dataset, batch_size=1024, sampler=dataset.test_sampler)
    for (name, model) in models_dict.items():
        model_dir = build_dir + "/" + name
        model_pth=f"{model_dir}/model.pth"
        
        load_model_pth(model,model_pth)
        test_json=f"{test_dir}/{name}.npz"
        write_test_result(model,test_loader,test_json,model_to_dataset,use_snr=(not dataset.all_snr is None ))

def generate_pretty_plots(result_path:str, labels=None):
    if not os.path.exists(result_path):
        print(f"{result_path} does not exist")
        return
    
    all_dir=os.listdir(result_path)
    all_dir=sort_by_keyword_priority(all_dir,["32","8","4","2"])
    json_file_list=[]
    for d in all_dir:
        if d.endswith(".npz") and os.path.isfile(result_path+"/"+d):
            json_file_list.append(d)

    plot_path=result_path+"/plots"
    acc_over_snr_list:list[testing_result]=[]
    acc_over_snr_legends:list[str]=[]
    for f in json_file_list:
        file_path:str=result_path+"/"+f
        plot_dir=plot_path+"/"+f.strip(".npz")
        os.makedirs(plot_dir,exist_ok=True)

        test_result=load_test_result(file_path)
        print(f"\n{file_path}")

        normalized_cm=True
        cm=get_cm(test_result,normalized=normalized_cm)
        plot_cm(cm=cm,file_save=plot_dir+"/CM_[OVERALL].jpeg",labels=labels,use_save=True,plot_inline=False)
        print("ACC OVERALL: ",get_average_accuracy(test_result))

        if test_result.use_snr:
            cm6=get_cm(test_result,normalized=normalized_cm,filter_snr=np.arange(6,31,2))
            plot_cm(cm=cm6,file_save=plot_dir+"/CM_[>=6dB].jpeg",labels=labels,use_save=True,plot_inline=False)
            print("ACC >=6dB: ",get_average_accuracy(test_result,filter_snr=np.arange(6,31,2)))

            cm30=get_cm(test_result,normalized=normalized_cm,filter_snr=[30])
            plot_cm(cm=cm30,file_save=plot_dir+"/CM_[==30dB].jpeg",labels=labels,use_save=True,plot_inline=False)
            print("ACC ==30dB: ",get_average_accuracy(test_result,filter_snr=[30]))

            acc_over_snr_list.append(test_result)
            acc_over_snr_legends.append(f.strip(".npz"))

    plot_acc_over_snr_from_test_result(test_result_list=acc_over_snr_list,
                                       save_path=plot_path+"/acc_over_snr.jpeg",
                                       snr_classes=np.arange(0.0,31.0,2.0),
                                       snr_ticks=np.arange(0.0,31.0,5.0),
                                       legends=acc_over_snr_legends,
                                       use_save=True,
                                       plot_inline=False)

    

def main():  
    #the directory that were previously used for training
    build_dir="runs/train_on_ray_ppm20"

    #where to save the results
    result_path=build_dir+"/test_on_ray_ppm20"

    # OPTIONAL
    # mapping the index to the actual modulation name 
    # for plotting. If not available, mod_classes can be None
    mod_classes = ["BPSK", 
                "QPSK", 
                "8PSK",
                "16QAM",
                "32QAM", 
                "64QAM", 
                "128QAM", 
                "256QAM",
                "16APSK", 
                "32APSK", 
                "64APSK", 
                "128APSK",
                "FM", 
                "AM-DSB-SC", 
                "AM-SSB-SC"]
    
    # ── Dataset ──────────────────────────────────────────────────────────────
    dataset = radio_dataset(
        dataset_path="dataset/MatGenData_ppm20_rayleigh_int8_20260204.h5",
        iq_key="all_IQ_8bit",
        mod_key="all_labels",
        snr_key="all_SNRs",
        chunk_length=4096,
    )

    # OPTIONAL: load back the testing index
    test_indices_path=build_dir+"/test_indices.json"
    dataset.load_external_test_indices(get_test_indices_from_json(test_indices_path))

    # generate the testing_result.npz
    generate_raw_test_result(
        build_dir=build_dir,
        result_path=result_path,
        dataset=dataset
    )

    # Generate the ConfusionMatrix and Comparison graphs
    # This will loop over any files ending .npz and draw graph
    # based on its data
    generate_pretty_plots(result_path=result_path,
                          labels=mod_classes #OPTIONAL
                          )

if __name__ == "__main__":
    main()        