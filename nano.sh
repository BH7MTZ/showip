#!/bin/bash
sudo mount -o remount,rw /
#download shopip file
cd /usr/local/bin
wget https://github.com/bg2kjt/showip/raw/master/raw/nanopi/MMDVMHost-ip
sudo cp MMDVMHost MMDVMHost-o
sudo rm MMDVMHost
sudo cp MMDVMHost-ip MMDVMHost
sudo chmod 755 MMDVMHost
#download config file
cd /etc
sudo cp mmdvmhost mmdvmhost-o
sudo rm mmdvmhost
wget https://github.com/bg2kjt/showip/raw/master/mmdvmhost
sudo mount -o remount,ro /
sudo reboot
