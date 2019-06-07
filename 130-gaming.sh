#!/bin/sh

# fix permissions for scripting
sudo chown $USER /etc/apt/sources.list.d/

# add 32 bit architecture
sudo dpkg --add-architecture i386

# update
sudo apt update -yy

# install dxvk
sudo apt install dxvk dxvk-wine32-development dxvk-wine64-development -yy

# install steam
sudo apt install steam -yy

# install game mode
sudo apt install gamemode -yy

# import wine gpg key
sudo wget -nc https://dl.winehq.org/wine-builds/winehq.key

# add wine gpg key
sudo apt-key add winehq.key

# add wine repository
sudo touch /etc/apt/sources.list.d/wine.list
sudo echo "deb https://dl.winehq.org/wine-builds/debian buster main" > /etc/apt/sources.list.d/wine.list

# update
sudo apt update

# install wine staging
sudo apt install --install-recommends winehq-staging -yy

#import lutris repository key
sudo wget https://download.opensuse.org/repositories/home:/strycore/Debian_9.0/Release.key

# add key with apt
sudo apt-key add Release.key

# return permissions to root
sudo chown root:root /etc/apt/sources.list.d/


# Add Lutris Repository
touch /etc/apt/sources.list.d/lutris.list
sudo echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_9.0/ ./" > /etc/apt/sources.list.d/lutris.list

# update
sudo apt update -yy
sudo apt install lutris -yy

