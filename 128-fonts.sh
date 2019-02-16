#!/bin/sh

sudo mkdir /usr/share/fonts/truetype/ubuntu-fonts

sudo mkdir /usr/share/fonts/truetype/yosemite-san-francisco

wget https://assets.ubuntu.com/v1/fad7939b-ubuntu-font-family-0.83.zip

unzip *.zip

cd ubuntu-font-family*

sudo mv *.ttf /usr/share/fonts/truetype/ubuntu-fonts/

cd ..

rm *.zip

rm -r ubuntu-font-family*

git clone https://github.com/supermarin/YosemiteSanFranciscoFont

cd YosemiteSanFranciscoFont/

sudo mv *.ttf /usr/share/fonts/truetype/yosemite-san-francisco

cd ..

sudo rm -r YosemiteSanFranciscoFont/


