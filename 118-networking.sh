#!/bin/sh

#################################
#         Networking
#################################

sudo apt install network-manager -yy

sudo apt install network-manager-openvpn -yy

sudo apt install network-mangager-openvpn-gnome -yy

sudo apt install samba samba-common samba-libs -yy

sudo apt install gvfs-backends -yy

sudo apt install net-tools -yy

sudo apt install ssh -yy

################################################
#         Enable SSH and SAMBA
################################################

sudo systemctl enable ssh

sudo systemctl start ssh

sudo systemctl enable smbd

sudo systemctl start smbd

sudo systemctl enable nmbd

sudo systemctl start nmbd
