## FINN Setup (run once)
```bash
cd finn && bash ./run-docker.sh
```
After docker session is finished, exit to the main directory or simply create a new terminal. 

To troubleshoot any dependencies caching issue, first try deleting the directory `finn/deps`, and run step 1 again.

## Session Setup
```bash
pixi shell
```
Once you are inside the pixi environment, modify the `FINN_XILINX_PATH` variable to your actual VIVADO path inside `env_example.sh`. Afterwards, source the `env_example.sh` file.

```bash
source env_example.sh
```

## Dataset 
Firstly, create a directory called `dataset` to contain any relevant h5 dataset.

Internally, the pipeline have a few assumptions about the dataset that need to be checked:

1. The dataset is formatted as h5 format
2. There must be at least 2 categories (with each categories must have the same length):
    - `IQ`  : hold an array of frames with shape (frame_count,1024,2). Each index is an I/Q frame with 1024 samples with 2 values for I and Q
    - `Mod` : hold an 1D array of respective modulation label in parallel with IQ array 
    - `SNR` (OPTIONAL) : hold a 1D array of respective SNR label in parallel with IQ array  
3. The dataset must be in INT8. Otherwise create a script to convert that dataset to INT8 beforehand
4. The frame indices must be sorted into equal chunks. Every (modulation + SNR) combination must be equal and stacked next to each other. Preferably, sort modulation first and SNR second. The number of frames per each (modulation + SNR) combination is called `chunk_length` 
```python
# For example 
# dataset has 15 modulations, 16 SNRs
# There are 4096 frames per modulations + snrs combination
snr_count = 16
chunk_length = 4096

# To get the index of a frame at:
# (modulation,snr,sample) = (4,5,600)
mod_index = 4
snr_index = 5
sample_index = 600

iq_index = mod_index * snr_count * chunk_length 
            + snr_index * chunk_length
            + sample_index
```

