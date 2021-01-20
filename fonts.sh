#!/bin/sh

# install microsoft fonts
sudo apt install ttf-mscorefonts-installer

# make an ubuntu font folder
sudo mkdir /usr/share/fonts/truetype/ubuntu-fonts

# make a mac-OS yosemite san francisco font folder
sudo mkdir /usr/share/fonts/truetype/yosemite-san-francisco

# make a powerline font folder
sudo mkdir /usr/share/fonts/powerline

# download ubuntu font family
wget https://assets.ubuntu.com/v1/fad7939b-ubuntu-font-family-0.83.zip

#unzip downloaded file
unzip *.zip

# change directories into unzipped ubuntu font folder
cd ubuntu-font-family*

# move everything ending in ".ttf"  into the ubuntu font folder we created earlier
sudo mv *.ttf /usr/share/fonts/truetype/ubuntu-fonts/

# change directories back to home
cd ..

# remove all files ending in ".zip"
rm *.zip

# remove all folders beginning with "ubuntu-font-family"
rm -r ubuntu-font-family*

# clone yosemite san francisco font from github
git clone https://github.com/supermarin/YosemiteSanFranciscoFont

# change directories into the font folder we just downloaded
cd YosemiteSanFranciscoFont/

# move everything ending in ".ttf" into the yosemite san fransisco folder we created earlier
sudo mv *.ttf /usr/share/fonts/truetype/yosemite-san-francisco

# change directory back to home
cd ..

# remove sanfransisco font folder we downloaded from github
sudo rm -r YosemiteSanFranciscoFont/

# clone powerline fonts from github
git clone https://github.com/powerline/fonts

# change directories into the fonts folder created by cloning powerline from github
cd fonts 

# Run installation script for powerline fonts
./install.sh

# copy powerline fonts into the powerline folder we created earlier
sudo cp /home/$USER/.local/share/fonts/*Powerline* /usr/share/fonts/powerline
