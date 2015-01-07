#!/bin/bash

cd /frameworks

echo "Downloading latest Qt 5.4.0" # Requires user's interaction
wget http://download.qt-project.org/official_releases/qt/5.4/5.4.0/qt-opensource-linux-x64-5.4.0.run
chmod +x qt-opensource-linux-x64-5.4.0.run
./qt-opensource-linux-x64-5.4.0.run
#cleanup
rm qt-opensource-linux-x64-5.4.0.run

echo "PATH=$PATH:/opt/Qt/5.4/gcc_64/bin:/opt/Qt/5.4/gcc_64" >> ~/.bashrc
echo "LD_LIBRARY_PATH=/opt/Qt/5.4/gcc_64/lib:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export LD_LIBRARY_PATH PATH" >> ~/.bashrc
export LD_LIBRARY_PATH PATH