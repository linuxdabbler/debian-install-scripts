#!/bin/sh

sudo echo "# experimental repos" >> /etc/apt/sources.list
sudo echo "deb http://ftp.us.debian.org/debian experimental main contrib non-free" >> /etc/apt/sources.list
sudo echo "deb-src http://ftp.us.debian.org/debian experimental main contrib non-free" >> /etc/apt/sources.list

sudo apt update
