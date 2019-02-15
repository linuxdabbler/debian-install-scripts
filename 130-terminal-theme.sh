#!/bin/bash

sudo cat xfce4-terminal-theme > ~/.config/xfce4/terminal/terminalrc

sudo cat urxvt-terminal-theme > ~/.Xresources

xrdb -merge ~/.Xresources

