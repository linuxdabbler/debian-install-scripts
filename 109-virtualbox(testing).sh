#!/bin/sh 

# Set up a the repository

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -

wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

#  Add the repository to sources.list.d

sudo chown $USER /etc/apt/sources.list.d/ 

sudo chmod 755 /etc/apt/sources.list.d/

sudo echo "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list.d/virtualbox.list

#  Update system

sudo apt update

# Install Virtualbox

sudo apt install virtualbox-6.0

wget -q https://download.virtualbox.org/virtualbox/6.0.10/Oracle_VM_VirtualBox_Extension_Pack-6.0.10.vbox-extpack
