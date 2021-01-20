#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip

unzip Ubuntu.zip

mkdir -p ~/.local/share/fonts/nerdfonts/ubuntu

mv *.ttf ~/.local/share/fonts/nerdfonts/ubuntu

fc-cache -f -v
