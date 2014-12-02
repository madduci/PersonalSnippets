#!/bin/bash

cd /frameworks

echo "Downloading latest Qt 5.3.2" # Requires user's interaction
wget http://download.qt-project.org/official_releases/qt/5.3/5.3.2/qt-opensource-linux-x64-5.3.2.run
chmod +x qt-opensource-linux-x64-5.3.2.run
./qt-opensource-linux-x64-5.3.2.run
#cleanup
rm qt-opensource-linux-x64-5.3.2.run