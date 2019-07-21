#!/bin/bash

sudo sed -e '/Binary/s/^/#/g' -i /etc/apt/sources.list
sudo sed -i 's/main/main contrib non-free/gI' /etc/apt/sources.list

sudo apt update
