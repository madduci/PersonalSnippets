#!/bin/bash

cd /frameworks

echo "Installing required libraries for OpenNI"
pacman -S freeglut graphviz v4l-utils

echo "Downloading OpenNI 1.5.4.0 with avin2 patch"
mkdir /frameworks/OpenNI
cd /frameworks/OpenNI
wget https://dl.dropboxusercontent.com/u/25908840/OpenNI_Linux/OpenNI-Bin-Dev-Linux-x64-v1.5.4.0.tar.zip
wget https://dl.dropboxusercontent.com/u/25908840/OpenNI_Linux/Sensor-Bin-Linux-x64-v5.1.2.1.tar.zip
wget https://dl.dropboxusercontent.com/u/25908840/OpenNI_Linux/NITE-Bin-Linux-x64-v1.5.2.21.tar.zip
git clone https://github.com/avin2/SensorKinect.git

echo "Installing OpenNI"

unzip OpenNI-Bin-Dev-Linux-x64-v1.5.4.0.tar.zip && tar xvfj OpenNI-Bin-Dev-Linux-x64-v1.5.4.0.tar.bz2
unzip Sensor-Bin-Linux-x64-v5.1.2.1.tar.zip && tar xvfj Sensor-Bin-Linux-x64-v5.1.2.1.tar.bz2
unzip NITE-Bin-Linux-x64-v1.5.2.21.tar.zip && tar xvfj NITE-Bin-Linux-x64-v1.5.2.21.tar.bz2

cd OpenNI-Bin-Dev-Linux-x64-v1.5.4.0 && ./install.sh && cd /frameworks/OpenNI
cd Sensor-Bin-Linux-x64-v5.1.2.1 && ./install.sh && cd /frameworks/OpenNI
cd NITE-Bin-Dev-Linux-x64-v1.5.2.21 && ./install.sh && cd /frameworks/OpenNI

cd SensorKinect/Platform/Linux/CreateRedist && ./RedistMaker
cd ../Redist/Sensor-Bin-Linux-x64-v5.1.2.1/
sudo ./install.sh
cd /frameworks

#cleanup
rm *.tar.*


