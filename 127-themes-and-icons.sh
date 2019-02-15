#!/bin/sh

sudo apt install numix-gtk-theme blackbird-gtk-theme -yy

# VIVACIOUS ICONS

wget https://launchpad.net/~ravefinity-project/+archive/ubuntu/ppa/+files/vivacious-colors_1.4~xenial~NoobsLab.com_all.deb

sudo dpkg -i vivacious*

rm vivacious*

# Install Papirus Icons

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

cd papirus-icon-theme/

./install.sh

cd ..

sudo rm -r papirus*
