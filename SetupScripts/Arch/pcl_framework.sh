#!/bin/bash
echo "Installing required libraries"
pacman -S boost-libs vtk qhull
yaourt -S flann

echo "Configuring Point Cloud Library (with OpenNI and OpenNI2)"
cd /frameworks
git clone https://github.com/PointCloudLibrary/pcl.git
cd pcl 
mkdir build && cd build/ 
cmake -D WITH_OPENNI=ON -D WITH_OPENNI2=ON -D WITH_QT=OFF ..
make -j4 && sudo make install
echo "Installation of PCL completed"
cd ~