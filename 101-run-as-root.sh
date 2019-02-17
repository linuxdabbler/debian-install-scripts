#!/bin/bash

sed -e '/Binary/s/^/#/g' -i /etc/apt/sources.list
sed -i 's/main/main contrib non-free/gI' /etc/apt/sources.list

apt install sudo git apt-transport-https -yy

sed -i 's/http/https/gI' /etc/apt/sources.list

#sed -i 's/http/https/gI' /etc/apt/sources.list.d

apt update && apt upgrade

chmod 755 /etc/sudoers

cat sudouser.txt >> /etc/sudoers

chmod 600 /etc/sudoers

rm sudouser.txt

apt install firmware-linux -yy

apt install llvm clang -yy
