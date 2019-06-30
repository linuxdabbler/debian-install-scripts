#!/bin/bash

#apt-transport-https -yy

#sed -i 's/http/https/gI' /etc/apt/sources.list

chmod 755 /etc/sudoers

cat sudouser.txt >> /etc/sudoers

chmod 600 /etc/sudoers

rm sudouser.txt

