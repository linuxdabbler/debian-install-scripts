#!/bin/sh

#################################
#         Networking
#################################

sudo apt install network-manager -yy

sudo apt install network-manager-openvpn -yy

sudo apt install network-mangager-openvpn-gnome -yy

sudo apt install samba samba-common samba-libs cifs-utils libcups2 cups smbclient -yy

sudo apt install gvfs-backends -yy

sudo apt install net-tools -yy

sudo apt install ssh -yy

################################################
#         Backup smb.conf       
################################################

sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak

##############################################################
#   Extract relevant information to simplify smb.conf
##############################################################

sudo chmod 755 /etc/samba/smb.conf.bak

sudo chmod 755 /etc/samba/smb.conf

sudo grep -v -E "^#|^;" /etc/samba/smb.conf.bak | grep . > /etc/samba/smb.conf

################################################
#         Enable SSH and SAMBA
################################################

sudo systemctl enable ssh

sudo systemctl start ssh

sudo systemctl enable smbd

sudo systemctl start smbd

sudo systemctl enable nmbd

sudo systemctl start nmbd


