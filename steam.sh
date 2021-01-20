#!/bin/bash

# Make sure you have non-free repos enabled in /etc/apt/sources.list and run updates your system before running this script

sudo dpkg --add-architecture i386

sudo apt update -yy

sudo apt install steam -yy

sudo apt install mesa-vulkan-drivers libglx-mesa0:i386 mesa-vulkan-drivers:i386 libgl1-mesa-dri:i386 -yy
