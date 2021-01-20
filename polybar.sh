#!/bin/bash


# Install Dependencies
sudo apt install build-essential cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libjsoncpp-dev libxcb-composite0-dev llvm clang ccache libnl-3-dev -yy

# Download from polybar from github

git clone https://github.com/jaagr/polybar.git

# Change directories into polybar

cd polybar && ./build.sh

echo "killall -q polybar" > ~/.config/polybar/launch.sh
echo "polybar example >>/tmp/polybar1.log 2>&1 &" >> ~/.config/polybar/launch.sh
echo "Bars launched..." >> ~/.config/polybar/launch.sh

chmod +x ~/.config/polybar/launch.sh


