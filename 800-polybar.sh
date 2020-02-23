#!/bin/bash


# Install Dependencies

sudo apt install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev -yy


sudo apt install libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev -yy


sudo apt install libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev -yy


sudo apt install libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev -yy


sudo apt install libpulse-dev ccache libxcb-composite0 libxcb-composite0-dev -yy

# Download from polybar from github

git clone https://github.com/jaagr/polybar.git

# Change directories into polybar

cd polybar

./build.sh
