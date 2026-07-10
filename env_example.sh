export FINN_XILINX_VERSION=2024.1

#IMPORTANT!: change this to path to your vivado
export FINN_XILINX_PATH="/home/phu/vivado" #<-----path to your vivado

# export PYTHONPATH=$PYTHONPATH:$(pwd)/finn/src #include the finn src library
if [[ ":$PYTHONPATH:" != *":$(pwd)/finn/src:"* ]]; then export PYTHONPATH="$(pwd)/finn/src:$PYTHONPATH"; fi

