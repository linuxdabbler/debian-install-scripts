#!/bin/sh

#sudo chown $USER /etc/apt/sources.list

echo "#  Stretch Backports Repository" >> /etc/apt/sources.list

echo "deb http://deb.debian.org/debian stretch-backports main contrib non-free" >> /etc/apt/sources.list

#sudo chown root:root /etc/apt/sources.list

apt update
