#!/bin/sh

# add 32 bit architecture
sudo dpkg --add-architecture i386

# update
sudo apt update

# install dxvk
sudo apt install dxvk dxvk-wine32-development dxvk-wine64-development

# install steam
sudo apt install steam

# import wine gpg key
wget -nc https://dl.winehq.org/wine-builds/winehq.key

# add wine gpg key
sudo apt-key add winehq.key

# add wine repository
sudo touch /etc/apt/sources.list.d/wine.list
sudo cat "deb https://dl.winehq.org/wine-builds/debian buster main" > /etc/apt/sources.list.d/wine.list

# update
sudo apt update

# install wine staging
sudo apt install --install-recommends winehq-staging

#import lutris repository key
wget https://download.opensuse.org/repositories/home:/strycore/Debian_9.0/Release.key

# add key with apt
sudo apt-key add Release.key

# Add Lutris Repository
sudo touch /etc/apt/sources.list.d/lutris.list
sudo cat "deb http://download.opensuse.org/repositories/home:/strycore/Debian_9.0/ ./" > /etc/apt/sources.list.d/lutris.list

# update
sudo apt update
sudo apt install lutris
