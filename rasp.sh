#!/bin/bash
sudo mount -o remount,rw /
#download shopip file
cd /usr/local/bin
sudo wget https://github.com/bg2kjt/showip/raw/master/raspberry/MMDVMHost-ip
sudo cp MMDVMHost MMDVMHost-o
sudo rm MMDVMHost
sudo cp MMDVMHost-ip MMDVMHost
sudo chmod 755 MMDVMHost
#download config file
cd /etc
sudo cp mmdvmhost mmdvmhost-o
sudo rm mmdvmhost
sudo wget https://github.com/bg2kjt/showip/raw/master/mmdvmhost
sudo rm /home/pi-star/rasp.sh
sudo mount -o remount,ro /
sudo reboot
