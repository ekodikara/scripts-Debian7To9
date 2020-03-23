#!/bin/bash

#This script should update Debian 7 to Debian 9 and upgrade to the latest kernel

apt-get update -y
apt-get upgrade -y
apt-get update -y

#Update sources.list to stretch
echo "#UPDATED with stretch sources" > /etc/apt/sources.list
echo "deb http://ftp.au.debian.org/debian/ stretch main"  >> /etc/apt/sources.list
echo "deb-src http://ftp.au.debian.org/debian/ stretch main" >> /etc/apt/sources.list

echo "deb http://security.debian.org/ stretch/updates main contrib" >> /etc/apt/sources.list
echo "deb-src http://security.debian.org/ stretch/updates main contrib" >> /etc/apt/sources.list

echo "deb http://ftp.au.debian.org/debian/ stretch-updates main contrib" >> /etc/apt/sources.list
echo "deb-src http://ftp.au.debian.org/debian/ stretch-updates main contrib" >> /etc/apt/sources.list
echo "deb http://ftp.au.debian.org/debian/ stretch-backports main" >> /etc/apt/sources.list

#Update with stretch updates/upgrade
apt-get update -y
apt-get upgrade -y
apt-get update -y

#upgrade to stretch
apt-get dist-upgrade -y

#remove unused things
apt-get autoremove -y
