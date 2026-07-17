import os
import json

from finn_onnx_converter import preprocess_brevitas_qonnx
from finn_deploy_run import run_finn_deploy

def load_json(json_file:str)->dict:
    with open(json_file,'r') as f:
        data = json.load(f)
    if type(data) == dict:
        return data
    return None

def run_finn(build_dir:str):
    dir_json = f"{build_dir}/model_dir_names.json"

    if not os.path.exists(dir_json):
        print(f"{dir_json} does not exist")
        return
    
    model_names_dict:dict=load_json(dir_json)

    if not ('quant' in list(model_names_dict.keys())):
        print(f"{dir_json} lack <quant> key")
        return

    quant_models:list[str]=model_names_dict['quant']
    
    for i, name in enumerate(quant_models):
        print(f"\n========== RUN FINN: {name} ==========")
        model_dir = build_dir + "/" + name
        if not os.path.exists(model_dir):
            print(f"{model_dir} does not exist. SKIP")
            continue

        brevitas_qonnx_pth=f"{model_dir}/model.onnx"
        print(f"reading onnx from {brevitas_qonnx_pth}")
        if not os.path.exists(brevitas_qonnx_pth):
            print(f"{brevitas_qonnx_pth} does not exist. SKIP")
            continue

        finn_onnx_build_dir=f"{model_dir}/finn_onnx"
        os.makedirs(finn_onnx_build_dir, exist_ok=True)
        final_finn_pth=preprocess_brevitas_qonnx(qonnx_path=brevitas_qonnx_pth,build_dir=finn_onnx_build_dir)

        finn_build_dir=f"{model_dir}/finn_build_dir"
        run_finn_deploy(final_finn_pth,finn_build_dir)

def main():
    build_dir = "runs/train_on_ray_ppm20"
    run_finn(build_dir=build_dir)

if __name__ == "__main__":
    main()    