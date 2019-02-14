#!/bin/sh

sudo apt install numix-gtk-theme blackbird-gtk-theme -yy

# VIVACIOUS ICONS

wget https://launchpad.net/~ravefinity-project/+archive/ubuntu/ppa/+files/vivacious-colors_1.4~xenial~NoobsLab.com_all.deb

# VIVACIOUS GTK THEME

wget https://lauchpad.net/~ravefinity-project/+archive/ubunut/ppa/+files/vivacious-colors-gtk-dark_16.04.4~xenial~NoobsLab.com_all.deb

sudo dpkg -i vivacious*

# Install Papirus Icons

git clone https://github.com/PapirusDevelopmentTeam/papirus-icon-theme

cd papirus-icon-theme/

./install.sh

rm vivacious-colors*

sudo rm -r papirus*
