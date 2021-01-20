#!/bin/sh

#############################
#         Desktop
#############################

sudo apt install synaptic -yy

sudo apt install thunar thunar-media-tags-plugin thunar-vcs-plugin thunar-volman -yy

sudo apt install ffmpegthumbnailer -yy

sudo apt install cups cups-pdf -yy

sudo apt install nitrogen -yy

sudo apt install lxappearance -yy

sudo apt install dmenu -yy

sudo apt install qt5-style-plugins -yy

#sudo apt install virtualbox virtualbox-ext-pack virtualbox-dkms virtualbox-guest-additions-iso virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11 -yy

###############################################
#       Make QT apps match GTK apps
###############################################

sudo chown $USER /etc/environment

sudo chmod 755 /etc/environment

sudo echo "QT_QPA_PLATFORMTHEME=gtk2" >> /etc/environment

sudo chown root:root /etc/environment

sudo chmod 600 /etc/environment

sudo usermod -aG vboxusers $USER
