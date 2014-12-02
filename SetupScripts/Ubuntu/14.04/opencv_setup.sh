#!/bin/bash

echo "Installing required libraries"
sudo apt-get install libavutil-dev libavformat-dev libavcodec-dev libavfilter-dev x264 libx264-dev -y
sudo apt-get install libavutil-ffmpeg-dev libavformat-ffmpeg-dev libavcodec-ffmpeg-dev libavfilter-ffmpeg-dev -y
sudo apt-get install libfaac-dev libjack-jackd2-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libsdl1.2-dev libtheora-dev libva-dev libvdpau-dev libvorbis-dev libx11-dev libxfixes-dev libxvidcore-dev texi2html yasm zlib1g-dev -y
sudo apt-get install libgstreamer0.10-0 libgstreamer0.10-dev gstreamer0.10-tools gstreamer0.10-plugins-base libgstreamer-plugins-base0.10-dev gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly gstreamer0.10-plugins-bad -y
sudo apt-get install libtiff5-dev libjpeg-dev libjasper-dev libdc1394-22-dev libdc1394-utils libusb-dev libusb-1.0-0-dev -y
sudo apt-get install libopenmpi-dev libeigen3-dev -y
sudo apt-get install libgtk2.0-dev libgtkglext1 libgtkglext1-dev -y

echo "Downloading and configuring OpenCV (with OpenNI, OpenNI2 and OpenGL)"

echo "Install OpenCV 3.x"
git clone https://github.com/Itseez/opencv.git
cd opencv/modules
git clone https://github.com/Itseez/opencv_contrib.git contrib
cd /frameworks/opencv
mkdir build && cd build/ 
cmake -D WITH_OPENGL=ON -D WITH_OPENNI=ON -D WITH_OPENNI2=OFF -D WITH_QT=OFF -DOPENCV_EXTRA_MODULES_PATH=/frameworks/opencv/contrib/modules -DBUILD_opencv_legacy=OFF ..	#OpenNI2 clashes with OpenNI in OpenCV - only one per time could be enabled
make -j4 && sudo make install
echo "Installation of OpenCV 3.x was completed"