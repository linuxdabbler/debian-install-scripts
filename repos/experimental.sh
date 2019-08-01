#!/bin/sh

#sudo chown $USER /etc/apt/sources.list

echo "# experimental repos" >> /etc/apt/sources.list
echo "deb http://ftp.us.debian.org/debian experimental main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://ftp.us.debian.org/debian experimental main contrib non-free" >> /etc/apt/sources.list

#sudo chown root:root /etc/apt/sources.list

apt update
