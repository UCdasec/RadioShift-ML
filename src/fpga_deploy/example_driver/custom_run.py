from src.dataset_utils import test_radio_dataset
from run_generate_fpga_test_report import run_test

#CHANGE THESE
bit_file_path="./bit_files/2bit/finn-accel.bit" 
test_result_save_path="./bit_files/2bit/2bit_fpga.npz"

#CHANGE THESE
test_dataset=test_radio_dataset(
    dataset_path="/home/xilinx/phu/MatGenData_ppm20_rayleigh_int8_20260204.h5",
    iq_key="all_IQ_8bit",
    mod_key="all_labels",
    snr_key="all_SNRs",
    chunk_length=4096,
)

run_test(bit_file_path=bit_file_path,
        test_dataset=test_dataset,
        save_test_result_path=test_result_save_path)