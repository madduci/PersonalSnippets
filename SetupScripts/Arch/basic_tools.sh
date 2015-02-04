#!/bin/bash
echo "Updating your machine first..."
pacman -Syyu

echo "Installing Basic Development Tools"

pacman -S cmake git gcc
pacman -S python python-numpy

echo "Creating Frameworks folder"

mkdir /frameworks
chmod 755 /frameworks
cd /frameworks

