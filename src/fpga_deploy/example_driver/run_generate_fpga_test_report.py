import sys
import os
import numpy as np
import math
import time

import pynq
from pynq import PL

from driver import io_shape_dict
from driver_base import FINNExampleOverlay

from src.dataset_utils import test_radio_dataset
from src.test_report_utils import testing_result

#ensure .bit and .hwh are in the same folder
def instance_accel(bit_file_path:str)->FINNExampleOverlay:
    print("\nclearing cached PL")
    PL.reset()
    print(f"loading {bit_file_path}")
    accel = FINNExampleOverlay(
            bitfile_name=bit_file_path,#change this to your bitfile name
            platform="zynq-iodma",
            io_shape_dict=io_shape_dict,
            batch_size=1,
            runtime_weight_dir="runtime_weights/",
            fclk_mhz=299.0 
        )
    #ensure fclk meet the timing constraint. check this in your VIVADO
    #too fast would cause the critical path to happen longer than a clock period   

    print(f"Expected input shape and datatype: {str(accel.ishape_normal())}, {str(accel.idt())}")
    print(f"Expected output shape and datatype: {str(accel.oshape_normal())}, {str(accel.odt())}")
    return accel

def pre_process_data(data):
    return data.astype(np.int8)

def get_testing_result(accel:FINNExampleOverlay, test_dataset:test_radio_dataset)->testing_result:
    batch_size=2048
    accel.batch_size = batch_size

    print(f"Batch size = {batch_size} | Accelerator buffer shapes are {accel.ishape_normal()} for input, {accel.oshape_normal()} for output")
    
    y_pred = np.empty((0)) 
    y_exp = np.empty((0))
    y_snr = np.empty((0))

    timer=0.0
    total = len(test_dataset.test_indices)
    total_batch=math.ceil(total/batch_size)

    cumulative_correct = 0
    cumulative_total = 0
    for i_batch in range(total_batch):
        i_frame = i_batch*batch_size
        current_batch_size = batch_size
        if i_frame+batch_size > total:
            current_batch_size = total - i_frame
            accel.batch_size = current_batch_size
        
        #get the batch iq frame
        batch_indices = test_dataset.test_indices[i_frame:i_frame+current_batch_size]
        data, mod, snr = test_dataset[batch_indices]
        
        #reshape to desired buffer shape
        ibuf = pre_process_data(data).reshape(accel.ishape_normal())
        
        #pass buffer to accel
        start_time=time.time()
        obuf = accel.execute(ibuf)
        batch_time=time.time()-start_time
        timer+=batch_time
        
        #get prediction in batch
        pred = obuf.reshape(current_batch_size).astype(int)

        y_exp = np.concatenate((y_exp, mod))
        y_snr = np.concatenate((y_snr, snr))
        y_pred = np.concatenate((y_pred, pred))
        

        # Calculate cumulative accuracy
        matches = (pred == mod)
        cumulative_correct += np.sum(matches)
        cumulative_total += current_batch_size
        print(f"batch {i_batch}/{total_batch} | batch_time={batch_time} seconds | cumulative acc: {cumulative_correct}/{cumulative_total}")
    
    use_snr = test_dataset.all_snr is not None 
    return testing_result(y_pred,y_exp,y_snr,use_snr)

def run_test(bit_file_path:str, test_dataset:test_radio_dataset, save_test_result_path:str):
    accel=instance_accel(bit_file_path)
    test_result=get_testing_result(accel=accel, test_dataset=test_dataset)
    test_result.save_file(save_test_result_path)


def main():
    bit_file_path="./bit_files/8bit/finn-accel.bit" 
    test_result_save_path="./bit_files/8bit/8bit_fpga.npz"
    test_dataset=test_radio_dataset(
        dataset_path="/home/xilinx/phu/MatGenData_ppm20_rayleigh_int8_20260204.h5",
        iq_key="all_IQ_8bit",
        mod_key="all_labels",
        snr_key="all_SNRs",
        chunk_length=4096,
    )
    run_test(bit_file_path,test_dataset,test_result_save_path)


if __name__ == "__main__":
    main()    