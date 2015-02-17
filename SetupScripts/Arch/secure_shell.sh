#!/bin/bash
echo "Deleting existing host keys, if any"
sudo rm /etc/ssh/ssh_host_*
echo "Generating new Host keys"
sudo ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key < /dev/null
sudo ssh-keygen -t rsa -b 4096 -f /etc/ssh/ssh_host_rsa_key < /dev/null
sudo cp -v ../SSH_Configurations/* /etc/ssh
echo "Restarting ssh service"
sudo systemctl restart sshd

echo "Deleting existing client keys, if any"
rm ~/.ssh/*
ssh-keygen -t ed25519 -o -a 100
ssh-keygen -t rsa -b 4096 -o -a 100

