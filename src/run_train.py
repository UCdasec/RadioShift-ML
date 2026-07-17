import os
import json
import torch
from torch.utils.data import DataLoader
from torch import nn
import numpy as np

from model_zoo import VGG10, VGG10_quant
from model_zoo import print_model_tree, load_model_pth
from dataset_utils import radio_dataset
from model_utils import train_model_on_dataset, train_model_kd, predict, export_to_onnx

def load_json(json_file:str)->dict:
    with open(json_file,'r') as f:
        data = json.load(f)
    if type(data) == dict:
        return data
    return None

def write_json(json_file:str,data:dict):
    with open(json_file,'w') as f:
        json.dump(data,f, ensure_ascii=False, indent=4)

def full_run(num_epochs:int,build_dir:str,dataset:radio_dataset):
    num_classes = len(np.unique(dataset.all_mod))
    write_json(f"{build_dir}/test_indices.json",{"test_indices":dataset.test_indices})

    float_models={
        "32bit":VGG10(output_size=num_classes)
    }
    quant_models = {
        "8bit" :VGG10_quant(output_size=num_classes,w_bits=8,a_bits=8),
        "4bit" :VGG10_quant(output_size=num_classes,w_bits=4,a_bits=4),
        "2bit" :VGG10_quant(output_size=num_classes,w_bits=2,a_bits=2),
    }

    #store the names of these models directory so we can access them later in a different testing script
    model_dir_names={
        "float" : list(float_models.keys()),
        "quant" : list(quant_models.keys())
    }
    write_json(f"{build_dir}/model_dir_names.json",model_dir_names)
    write_json(f"{build_dir}/model_output_mapping.json",dataset.index_to_label)
    # ─float models───────────────────────────────────────────────────────────────
    #float models is for baseline comparison only, they do not go through FINN and FPGA
    print("\n=============FLOAT MODELS===============")
    for i, (name, model) in enumerate(float_models.items()):
        print(f"\n========== Training {name} ==========")
        model_dir = build_dir + "/" + name
        os.makedirs(model_dir, exist_ok=True)
        # print_model_tree(model)
        train_model_on_dataset(model=model, dataset=dataset,
                               build_dir=model_dir, num_epochs=num_epochs)
        best_chkpnt=f"{model_dir}/model.pth"
        print(f"model best chkpnt saved in {best_chkpnt}")

    # ─Quant models───────────────────────────────────────────────────────────────
    #Quant models can go through FINN and FPGA, assume input is INT8
    print("\n=============QUANT MODELS===============")
    for i, (name, model) in enumerate(quant_models.items()):
        print(f"\n========== Training {name} ==========")
        model_dir = build_dir + "/" + name
        os.makedirs(model_dir, exist_ok=True)
        # print_model_tree(model)
        train_model_on_dataset(model=model, dataset=dataset,
                               build_dir=model_dir, num_epochs=num_epochs)
        
        #ensure we load back the best checkpoint rather the most recent epoch
        best_chkpnt=f"{model_dir}/model.pth"
        load_model_pth(model,best_chkpnt)
        print(f"model best chkpnt saved in {best_chkpnt}")

        brevitas_qonnx_pth=f"{model_dir}/model.onnx"
        export_to_onnx(model=model,export_path=brevitas_qonnx_pth, args_inp=torch.randn(1,2,1024).to('cuda'))
        print(f"qonnx saved in {brevitas_qonnx_pth}")

def main():  
    # PARAMETERS
    num_epochs = 10
    build_dir = "runs/train_on_ray_ppm20"
    os.makedirs(build_dir, exist_ok=True)

    dataset = radio_dataset(
        dataset_path="dataset/MatGenData_ppm20_rayleigh_int8_20260204.h5",
        iq_key="all_IQ_8bit",
        mod_key="all_labels",
        snr_key="all_SNRs",
        chunk_length=4096,
    )

    # dataset = radio_dataset( 
    #     "dataset/RF_Capture_65536fpm_05292026_int8.h5",
    #     iq_key="all_IQ_8bit",
    #     mod_key="all_labels",
    #     snr_key=None,
    #     chunk_length=65536,
    # )

    # Do a full run, train a float32, int8, int4, int2
    # All quantized integer based models also go through a qonnx generator
    # The qonnx can be run through FINN and deployed on FPGA
    full_run(num_epochs=num_epochs,
                build_dir=build_dir,
                dataset=dataset)
        
if __name__ == "__main__":
    main()
