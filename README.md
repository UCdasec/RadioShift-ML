## FINN Setup (run once)
```bash
cd finn && bash ./run-docker.sh`
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