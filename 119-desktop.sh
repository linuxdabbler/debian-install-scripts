#!/bin/sh

#############################
#         Desktop
#############################

sudo apt install synaptic -yy

sudo apt install thunar thunar-media-tags-plugin thunar-vcs-plugin thunar-volman -yy

sudo apt install ffmpegthumbnailer -yy

sudo apt install cups cups-pdf -yy

sudo apt install variety -yy

sudo apt install nitrogen -yy

sudo apt install lxappearance -yy

sudo apt install dmenu -yy

sudo apt install rofi -yy

sudo apt install qt5-style-plugins

###############################################
#       Make QT apps match GTK apps
###############################################

sudo chown $USER /etc/environment

sudo chmod 755 /etc/environment

sudo echo "QT_QPA_PLATFORMTHEME=gtk2" >> /etc/environment

sudo chown root:root /etc/environment

sudo chmod 600 /etc/environment
