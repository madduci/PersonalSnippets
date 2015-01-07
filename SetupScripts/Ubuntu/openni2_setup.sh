#!/bin/bash
echo "Installing OpenNI2 2.2.0.33"
wget https://dl.dropboxusercontent.com/u/25908840/OpenNI_Linux/OpenNI-Linux-x64-2.2.0.33.tar.zip
unzip OpenNI-Linux-x64-2.2.0.33.tar.zip && tar xfj OpenNI-Linux-x64-2.2.tar.bz2
mv OpenNI-Linux-x64-2.2 OpenNI2
cd OpenNI2 && sudo ./install.sh 
mkdir /usr/include/ni2
cp -vR /frameworks/OpenNI2/Include/* /usr/include/ni2/
cp -vR /frameworks/OpenNI2/Redist/* /usr/lib/
cd /frameworks

#cleanup
rm *.tar.*

echo "Setting .bashrc configuration"
echo "LD_LIBRARY_PATH=/frameworks/OpenNI2/Redist:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH" >> ~/.bashrc
export LD_LIBRARY_PATH