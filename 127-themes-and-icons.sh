#!/bin/sh

sudo apt install numix-gtk-theme blackbird-gtk-theme -yy

sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf

# VIVACIOUS ICONS

#wget https://launchpad.net/~ravefinity-project/+archive/ubuntu/ppa/+files/vivacious-colors_1.4~xenial~NoobsLab.com_all.deb

#sudo dpkg -i vivacious*

#rm vivacious*

# Install Papirus Icons

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

cd papirus-icon-theme/

./install.sh

cd ..

sudo rm -r papirus*

git clone https://github.com/vinceliuice/vimix-gtk-themes

cd vimix-gtk-themes

./Install

cd ..

sudo rm -r vimix*
