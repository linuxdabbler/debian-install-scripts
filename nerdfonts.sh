#!/bin/bash

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Inconsolata.zip

unzip Ubuntu.zip

mkdir -p ~/.local/share/fonts/nerdfonts/ubuntu

mv *.ttf ~/.local/share/fonts/nerdfonts/ubuntu

rm Ubuntu.zip

unzip Inconsolata.zip

mkdir -p ~/.local/share/fonts/nerdfonts/inconsolata

rm Inconsolata.zip

mv Inconsolata* ~/.local/share/fonts/nerdfonts/inconsolata/

fc-cache -f -v
