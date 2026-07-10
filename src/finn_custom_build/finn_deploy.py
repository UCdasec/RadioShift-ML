from qonnx.core.modelwrapper import ModelWrapper
from qonnx.transformation.change_3d_tensors_to_4d import Change3DTo4DTensors
from qonnx.transformation.general import GiveUniqueNodeNames

import finn.transformation.fpgadataflow.convert_to_hw_layers as to_hw
import finn.transformation.streamline.absorb as absorb
from finn.builder.build_dataflow_config import DataflowBuildConfig
import finn.builder.build_dataflow as build
import finn.builder.build_dataflow_config as build_cfg

import os
from pathlib import Path
from datetime import datetime

def step_pre_streamline(model: ModelWrapper, cfg: DataflowBuildConfig):
    model = model.transform(Change3DTo4DTensors())
    model = model.transform(absorb.AbsorbScalarMulAddIntoTopK())
    return model


def step_convert_final_layers(model: ModelWrapper, cfg: DataflowBuildConfig):
    model = model.transform(to_hw.InferChannelwiseLinearLayer())
    model = model.transform(to_hw.InferLabelSelectLayer())
    model = model.transform(GiveUniqueNodeNames())
    return model

def debug_graph(model: ModelWrapper, cfg: DataflowBuildConfig):
    print("\n===== GRAPH =====")
    for node in model.graph.node:
        print(
            node.name,
            node.op_type,
            list(node.input),
            "->",
            list(node.output)
        )
    return model

# Target inference performance in frames per second
def select_target_fps(platform):
    return 4500

# Target clock period (in nanoseconds) for Vivado synthesis.
# Frequency (MHz) = 1000 / clock_period_ns 
# e.g. synth_clk_period_ns=5.0 will target a 200 MHz clock.
def select_clk_period(platform):
    return 5.0 

# assemble build flow from custom and pre-existing steps
def select_build_steps(platform):
    return [
        #------------Network-Preparation------
        "step_tidy_up",
        step_pre_streamline, #Custom steps above
        "step_streamline",
        "step_convert_to_hw",
        step_convert_final_layers,  #Custom steps above
        debug_graph,
        "step_create_dataflow_partition",
        "step_specialize_layers",
        "step_target_fps_parallelization",
        "step_apply_folding_config",
        "step_minimize_bit_width",  
        "step_generate_estimate_reports",
        #------------Hardware-Build-(finn generate instruction files for VITIS HLS)----
        "step_hw_codegen",
        "step_hw_ipgen",
        "step_set_fifo_depths",
        "step_create_stitched_ip",
        #------------HW-synthesis--------------------------
        "step_measure_rtlsim_performance",
        "step_out_of_context_synthesis",
        "step_synthesize_bitfile",
        "step_make_pynq_driver",
        "step_deployment_package",
    ]
    
#What information we want to see.
def select_generate_output(platform):
    return [
        build_cfg.DataflowOutputType.ESTIMATE_REPORTS,
        build_cfg.DataflowOutputType.STITCHED_IP,
        build_cfg.DataflowOutputType.RTLSIM_PERFORMANCE,
        build_cfg.DataflowOutputType.BITFILE, #This is how we tell the builder to generate the bitfile
        build_cfg.DataflowOutputType.DEPLOYMENT_PACKAGE,
        build_cfg.DataflowOutputType.PYNQ_DRIVER, 
    ]

def _start_dataflow(finn_onnx_pth:str,platform_name:str, output_dir:str):
    '-----------------------Get the platform of the target board--------------------------'
    shell_flow_type = build_cfg.ShellFlowType.VIVADO_ZYNQ
    vitis_platform = None
    
    '-----------------------Define the config for the build architechture---------------'
    cfg = build_cfg.DataflowBuildConfig(
        steps=select_build_steps(platform_name),
        output_dir=output_dir,
        synth_clk_period_ns=select_clk_period(platform_name),
        target_fps=select_target_fps(platform_name), #Target FPS, not guaranteed the model will achieve
        board=platform_name,
        shell_flow_type=shell_flow_type,
        vitis_platform=vitis_platform,
        split_large_fifos=True,
        standalone_thresholds=True,
        # enable extra performance optimizations (physopt)
        vitis_opt_strategy=build_cfg.VitisOptStrategyCfg.PERFORMANCE_BEST,
        generate_outputs=select_generate_output(platform_name),        
    )
    
    '-----------------------Start the build flow--------------------------------------------'
    # Start the build flow, with the input being the [onnx model] and the [config file]
    build.build_dataflow_cfg(finn_onnx_pth, cfg)
    
    return cfg

def generate_finn_deployment(finn_onnx_pth:str, build_dir:str, tmp_dir:str="./tmp"):
    #Define the temporary folders 
    temporary_artifacts = Path(tmp_dir)
    os.environ["FINN_BUILD_DIR"]=str(temporary_artifacts.absolute())
    temporary_artifacts.mkdir(exist_ok=True)

    zynq_platform = "ZCU104"
    dt=datetime.today().strftime('%Y_%m_%d')
    output_dir=f"{build_dir}/{zynq_platform}_{dt}"
    print(f"output will be generated in {output_dir} \ntmp artifacts in {str(temporary_artifacts.absolute())}")
    _start_dataflow(finn_onnx_pth=finn_onnx_pth,platform_name=zynq_platform,output_dir=output_dir)


#meant to be run in finn docker container. 
#CLI: run-docker.sh build_custom <build dir> <this python file>
#
#we will create another python script outside the docker container 
#that will instantiate the docker and run this file for convenience sake
def main():
    generate_finn_deployment(finn_onnx_pth="./finn.onnx",
                              build_dir=f"./output")

if __name__ == "__main__":
    main()