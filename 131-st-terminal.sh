#!/bin/bash

sudo apt install build-essential make cmake libxft-dev libx11-xft libx11-dev ncurses-term libxft2 libx11-6 libfreetype6 libfontconfig1 libc6 git vim  && git clone https://github.com/linuxdabbler/st && cd st && sudo make clean install
