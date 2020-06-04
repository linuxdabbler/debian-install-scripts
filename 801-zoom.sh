#!/bin/sh

sudo apt install libglib2.0-0 libgstreamer-plugins-base1.0-0 libxcb-shape0 libxcb-shm0 libxcb-xfixes- libxcb-randr0 libxcb-image0 libfontconfig1 libgl1-mesa-glx libxi6 libxrender1 libpulse0 libxcomposite1 libxslt1.1 libsqlite3-0 libxcb-keysyms1 libxcb-xtest0 libegl1-mesa libibus-1.0-5

wget https://zoom.us/client/latest/zoom_amd64.deb

sudo dpkg -i zoom_amd64.deb
