#!/bin/sh

# generate a file for the user to compare the before and after values of limits after running this script
ulimit -Hn > ulimit.txt

# fix permissions for scripting
sudo chown $USER /etc/apt/sources.list.d/

# add 32 bit architecture
sudo dpkg --add-architecture i386

# update
sudo apt update -yy

# install vulkan mesa drivers
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 -yy

# install dxvk
sudo apt install dxvk dxvk-wine32-development dxvk-wine64-development -yy

# install steam
sudo apt install steam -yy

# install game mode
sudo apt install gamemode -yy

# ENABLE ESYNC
# make a backup copy of system.conf in case something goes wrong you can easily recover
# by moving (mv command) the  .bak file to the .conf file in terminal... easy peasy
sudo cp /etc/systemd/system.conf /etc/systemd/system.conf/bak

# Add the needed change to system.conf
sudo echo "DefaultLimitNOFILE=1048576" >> /etc/systemd/system.conf

#make a backup copy of user.conf just like in the previous step... easy peasy
sudo cp /etc/systemd/user.conf /etc/systemd/user.conf.bak

# Add the needed change to user.conf
sudo echo "DefaultLimitNOFILE=1048576" >> /etc/systemd/user.conf

# Make a backup of limits.conf just like system.conf and user.conf
sudo cp /etc/security/limits.conf /etc/security/limits.conf.bak

#add your username and settings to limits.conf
sudo echo "$USER soft nofile 1048576" >> /etc/security/limits.conf
sudo echo "$USER hard nofile 1048576" >> /etc/security/limits.conf

#restart systemd for changes to take effect
sudo systemctl daemon-reexec

#send output to the file from the beginning of the script to verify the changes were made
# THE FILE CAN BE DELETED WITH NO ILL EFFECTS
ulimit -Hn >> ulimit.txt

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

# install wine tricks
sudo apt install winetricks -yy

# install Play On Linux
sudo apt install playonlinux -yy

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

