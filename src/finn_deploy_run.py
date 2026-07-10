import os
import shutil
import subprocess

FINN_CUSTOM_BUILD="src/finn_custom_build"
FINN_BUILD_PY="./finn_deploy"

def run_finn_deploy(finn_onnx_pth:str, save_dir:str):
    #copy finn_onnx_path file to the finn_custom_build directory, because finn_build_py is hardcoded to use that path
    #finn run_docker doesnt allow passing argument to our python file, so we hardcode the main function
    shutil.copy(finn_onnx_pth, FINN_CUSTOM_BUILD)

    cmd = ["./finn/run-docker.sh", "build_custom", FINN_CUSTOM_BUILD, FINN_BUILD_PY]
    proc = subprocess.run(cmd)

    #after complete, everything should be in {FINN_CUSTOM_BUILD}/output
    #copy everything to save_dir, and delete the output

    source_dir = os.path.join(FINN_CUSTOM_BUILD, "output")
    
    if os.path.exists(source_dir):
        # Copy everything from output to save_dir
        os.makedirs(save_dir, exist_ok=True)
        for item in os.listdir(source_dir):
            s = os.path.join(source_dir, item)
            d = os.path.join(save_dir, item)
            if os.path.isdir(s):
                shutil.copytree(s, d, dirs_exist_ok=True)
            else:
                shutil.copy2(s, d)
        
        # Delete the original output folder
        shutil.rmtree(source_dir)
        print(f"Successfully copied build outputs to {save_dir} and cleaned up.")
    else:
        print(f"Expected output directory {source_dir} not found.")
