#!/bin/bash

echo "Installing required libraries"
pacman -S libx264 ffmpeg faac --noconfirm
pacman -S gst-libav gst-plugins-base gst-plugins-bad gst-plugins-good opencore-amr libva zlib --noconfirm
pacman -S libtiff libjpeg-turbo libusb eigen --noconfirm
pacman -S gtkglext gtkglextmm --noconfirm

echo "Downloading and configuring OpenCV (with OpenGL)"

echo "Install OpenCV 3.x"
cd /frameworks
git clone https://github.com/Itseez/opencv.git
cd opencv/modules
git clone https://github.com/Itseez/opencv_contrib.git contrib
cd /frameworks/opencv
mkdir build && cd build/ 
cmake -D WITH_OPENGL=ON -D WITH_QT=OFF -DOPENCV_EXTRA_MODULES_PATH=/frameworks/opencv/modules/contrib/modules -DBUILD_opencv_legacy=OFF ..	#OpenNI2 clashes with OpenNI in OpenCV - only one per time could be enabled
make -j4 && sudo make install
echo "Installation of OpenCV 3.x was completed"