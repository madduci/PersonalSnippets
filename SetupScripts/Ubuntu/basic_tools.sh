#!/bin/bash
echo "Updating your machine first..."
apt-get update && apt-get dist-upgrade -y

echo "Installing Basic Development Tools"

apt-get install build-essential cmake cmake-curses-gui pkg-config git subversion -y
apt-get install python-dev python-numpy -y

echo "Creating Frameworks folder"

mkdir /frameworks
chmod 755 /frameworks
cd /frameworks

