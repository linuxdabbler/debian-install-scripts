#!/bin/sh

#  Install sudo

apt install sudo -yy

#  Find the standard user you created during installation and make it a variable

user=$(getent passwd 1000 |  awk -F: '{ print $1}')

#  Echo the user into the sudoers file

echo "$user  ALL=(ALL:ALL)  ALL" >> /etc/sudoers
