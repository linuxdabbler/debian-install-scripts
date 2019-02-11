#!/bin.sh

sudo chown $USER /etc/apt/sources.list

sudo chmod 755 /etc/apt/sources.list

sudo echo "deb http://ftp.debian.org/debian stretch-backports main contrib non-free" >> /etc/apt/sources.list

sudo chown root:root /etc/apt-sources.list

sudo chmod 600 /etc/apt/sources.list

sudo apt update

sudo apt install virtualbox virtualbox-ext-pack -yy

