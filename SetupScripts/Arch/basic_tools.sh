#!/bin/bash
echo "Updating your machine first..."
pacman -Syyu

echo "Installing Basic Development Tools"

pacman -S cmake git gcc-multilib gdb valgrind
pacman -S python python-numpy

echo "Creating Frameworks folder"

mkdir /frameworks
chmod 755 /frameworks
cd /frameworks

