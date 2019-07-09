#!/bin/sh

wget https://launchpad.net/~peppermintos/+archive/ubuntu/ice-dev/+files/ice_6.0.5_all.deb 

sleep 10

sudo dpkg -i ice*.deb

