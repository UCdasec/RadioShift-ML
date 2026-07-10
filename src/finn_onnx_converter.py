from qonnx.core.modelwrapper import ModelWrapper
from qonnx.util.cleanup import cleanup as qonnx_cleanup
from qonnx.transformation.infer_shapes import InferShapes
from qonnx.transformation.infer_datatypes import InferDataTypes
from qonnx.transformation.general import (
    GiveReadableTensorNames,
    GiveUniqueNodeNames,
)
from qonnx.transformation.insert_topk import InsertTopK
from qonnx.core.datatype import DataType

from finn.transformation.qonnx.convert_qonnx_to_finn import ConvertQONNXtoFINN

#convert the brevitas qonnx to finnonnx like step 3 in radio_finn repo
def preprocess_brevitas_qonnx(qonnx_path:str, build_dir:str)->str:
    cleanup_pth = _initial_cleanup(qonnx_path=qonnx_path, build_dir=build_dir) 
    finn_model_pth = _convert_to_finnonnx(qonnx_path=cleanup_pth, build_dir=build_dir)
    pre_net_surgery_pth = _custom_tidy_up_tf(finn_onnx_path=finn_model_pth,build_dir=build_dir)
    net_surgery_pth = _network_surgery(finn_onnx_path=pre_net_surgery_pth,build_dir=build_dir)
    topk_pth=_insert_topk(finn_onnx_path=net_surgery_pth,build_dir=build_dir)
    input_int8_pth=_set_input_int8(finn_onnx_path=topk_pth,build_dir=build_dir)
    
    model=ModelWrapper(input_int8_pth)
    final_finn_pth=f"{build_dir}/finn.onnx"
    model.save(final_finn_pth)

    return final_finn_pth

def _initial_cleanup(qonnx_path:str, build_dir:str)->str:
    cleanup_path=f"{build_dir}/initial_cleanup_1.onnx"
    qonnx_cleanup(qonnx_path,out_file=cleanup_path)  
    return cleanup_path

def _convert_to_finnonnx(qonnx_path:str, build_dir:str)->str:
    model=ModelWrapper(qonnx_path)
    model = model.transform(ConvertQONNXtoFINN())
    finn_model_pth=f'{build_dir}/inital_finn_2.onnx'
    model.save(finn_model_pth)
    return finn_model_pth

def _custom_tidy_up_tf(finn_onnx_path:str,build_dir:str)->str:
    finn_model = ModelWrapper(finn_onnx_path)
    transforms = [
        InferShapes(),
        InferDataTypes(),
        GiveUniqueNodeNames(),
        GiveReadableTensorNames()
        ]
    for transform in transforms:
        finn_model = finn_model.transform(transform)
    finn_model.cleanup()
    pre_net_surgery_pth=f'{build_dir}/pre_nw_surgery_3.onnx'
    finn_model.save(pre_net_surgery_pth)
    return pre_net_surgery_pth

def _network_surgery(finn_onnx_path:str, build_dir:str)->str:
    finn_model = ModelWrapper(finn_onnx_path)
    #network surgery, removing first multithreshold
    #Find the first 'Conv' node and store it in 'new_input_node'
    first_conv_node = finn_model.get_nodes_by_op_type("Conv")[0]   
    #Find the input of that 'Conv' node 
    new_input_tensor = finn_model.get_tensor_valueinfo(first_conv_node.input[0]) 

    #Find the original input node of the model.
    old_input_tensor = finn_model.graph.input[0] 

    #Remove the old input node, and replace it with the new input tensor ('Add' node)
    finn_model.graph.input.remove(old_input_tensor) 
    finn_model.graph.input.append(new_input_tensor)

    #Find the index of the new input node, and remove everything from index 0 to that index
    #In this case, we will be removing index 0 and index 1, which are the 'inp' and 'MultiThreshold' nodes
    #So now, the 'Add' node become the model input with index 0, and the 'Conv' node has index 1, and so on...
    new_input_index = finn_model.get_node_index(first_conv_node)
    del finn_model.graph.node[0:new_input_index]

    # remove redundant value_info for primary input/output
    # othwerwise, newer FINN versions will not accept the model
    if finn_model.graph.input[0] in finn_model.graph.value_info:
        finn_model.graph.value_info.remove(finn_model.graph.input[0])
    if finn_model.graph.output[0] in finn_model.graph.value_info:
        finn_model.graph.value_info.remove(finn_model.graph.output[0])

    net_surgery_pth=f'{build_dir}/nw_surgery_4.onnx'
    finn_model.save(net_surgery_pth)
    return net_surgery_pth

def _insert_topk(finn_onnx_path:str, build_dir:str)->str:
    finn_model = ModelWrapper(finn_onnx_path)

    # insert topK node, with k=1, meaning we pick the 1 classification with highest prediction value
    finn_model = finn_model.transform(InsertTopK(k=1))
    
    # remove redundant value_info for primary input/output
    # othwerwise, newer FINN versions will not accept the model
    if finn_model.graph.input[0] in finn_model.graph.value_info:
        finn_model.graph.value_info.remove(finn_model.graph.input[0])
    if finn_model.graph.output[0] in finn_model.graph.value_info:
        finn_model.graph.value_info.remove(finn_model.graph.output[0])

    top_k=f'{build_dir}/top_k_5.onnx'
    finn_model.save(top_k)
    return top_k

def _set_input_int8(finn_onnx_path:str, build_dir:str)->str:
    finn_model = ModelWrapper(finn_onnx_path)

    # manually set input datatype (not done by brevitas yet)
    finnonnx_in_tensor_name = finn_model.graph.input[0].name
    finnonnx_model_in_shape = finn_model.get_tensor_shape(finnonnx_in_tensor_name)
    finn_model.set_tensor_datatype(finnonnx_in_tensor_name, DataType["INT8"]) 
    #keep the model input as int8 so we can pass integer data to verify on FPGA. Python does not have int4 or lower.
    #The hardware model design will still be using the bit width specified in the previous tutorial
    input_8bit_model=f'{build_dir}/input_8bit_model_6.onnx'
    finn_model.save(input_8bit_model)
    return input_8bit_model