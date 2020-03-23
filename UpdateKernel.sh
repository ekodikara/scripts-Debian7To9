#!/bin/bash

#This script will upgrade to the latest kernel

#Fix package dependencies
apt --fix-broken install


#Update the backports
echo "deb http://ftp.debian.org/debian stretch-backports main" | sudo tee -a /etc/apt/sources.list > /dev/null

apt-get update

apt-get -t stretch-backports upgrade

#Upgrade the kernel
apt-get install -t stretch-backports linux-image-amd64 -y

#Make postgresql start after reboot
update-rc.d postgresql enable

#REboot the system
read -p "Do you wish to reboot for new Debian and Kernel to be to take effect? (y/n)" -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]
        then

                echo "System is now going down for restart, please run usbEthernetNetworkFix.sh after reboot"
                reboot
        else
                echo
                 echo "Operatin aborted, please be aware Debain and the Kernel have been updated and will take effect after next reboot"
                echo
        fi