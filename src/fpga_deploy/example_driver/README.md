# Run Validation on FPGA 

## Description
This `/example driver` directory is meant to be copied onto the FPGA.
After running FINN and generate the bit files, ensure to copy them and store somewhere inside `/bit_files` folder. The bit files can be found in the `finn_build_dir/` directory after running the finn pipeline.

**NOTE**: The driver is built around the generated `/driver` from FINN. This directory only works assuming that your model use similar input and output shape which can be found in the `driver.py`. Otherwise, you need to copy your own FINN-generated `/driver`, and use our example as reference.

**NOTE**: Both `.bit` and `.hwh` files must be in the same folder. We use FINNOverlay to load the PL onto the FPGA, and it assume both are in the same folder.

An example 8bit, 4bit & 2bit finn-accel from training on RayleighPPM20 is included in `/bit_files`

## Set Up
To run Python script with access to Pynq, we need to have root privileges and source the Pynq-Python binary. Run this in your FPGA terminal.

```bash
sudo su
source source_pynq.sh
```

## Example Run
The `main()` function of the `run_generate_test_result.py` script includes an example run of loading the bit file, the test dataset and generate a `testing_result.npz`. The `npz` file can be then copied back to the host PC to run `run_generate_test_result.py` alonside GPU trained models for comparison and visualize pretty plots.

The usual pipeline can be understood as below, and you can extend or modify it in a custom script for other usage. Example code below can be found in `custom_run.py`:

```python
from src.dataset_utils import test_radio_dataset
from run_generate_fpga_test_report import run_test

#CHANGE THESE
bit_file_path = "/path/to/your/bit_file.bit"
test_result_save_path = "/path/to/save/testing_result.npz"

#CHANGE THESE
test_dataset = test_radio_dataset(
    dataset_path="/path/to/your/dataset.h5"
    iq_key="all_IQ",
    mod_key="all_labels",
    snr_key="all_SNRs", #or None (optional)
    chunk_length=4096
)

run_test(bit_file_path,test_dataset,test_result_save_path)
```
```bash
python custom_run.py
```