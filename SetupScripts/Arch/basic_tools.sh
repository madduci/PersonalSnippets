#!/bin/bash
echo "Updating your machine first..."
pacman -Syyuu --noconfirm

echo "Installing Basic Development Tools"

pacman -S terminator cmake docker git gcc-multilib gdb clang valgrind veracrypt filezilla vim --noconfirm
pacman -S python python-numpy --noconfirm

echo "Creating Frameworks folder"

mkdir /frameworks
chmod 755 /frameworks
cd /frameworks

