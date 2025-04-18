#!/bin/bash
echo "Checking VirtualBox Guest Additions..."
if lsmod | grep -q vboxsf; then
  echo "vboxsf module is loaded."
else
  echo "vboxsf module not loaded. Attempting to load..."
  sudo modprobe vboxsf
fi

echo "Creating mount point..."
sudo mkdir -p /home/vagrant/data

echo "Mounting shared folder..."
sudo mount -t vboxsf -o uid=1000,gid=1000 data /home/vagrant/data
if [ $? -eq 0 ]; then
  echo "Mount successful."
else
  echo "Mount failed."
  exit 1
fi

echo "Setting permissions..."
sudo chown vagrant:vagrant /home/vagrant/data
sudo chmod 775 /home/vagrant/data