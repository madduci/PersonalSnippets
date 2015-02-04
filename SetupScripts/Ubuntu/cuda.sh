#!/bin/bash

echo "Installing CUDA"

#For new Graphic Cards:
apt-get install nvidia-cuda-toolkit nvidia-cuda-dev nvidia-opencl-dev nvidia-331

#For old Graphic Cards:
#apt-get install nvidia-cuda-dev nvidia-opencl-dev nvidia-current