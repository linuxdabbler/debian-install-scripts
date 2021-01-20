#!/bin/sh


# Install headers for  your kernel 
sudo apt install linux-headers-"$(uname -r)" linux-image-amd64 -yy

# Symlink /bin/rm to /usr/bin/rm (uncomment this if you are using Debian Stretch)
#sudo ln -s /bin/rm /usr/bin/rm

# Install ZFS DKMS and ZFS utilities
sudo apt install zfs-dkms zfsutils-linux -yy

# Add the kernel Modules
sudo modprobe zfs

# Enable ZFS services
sudo systemctl enable zfs.target
sudo systemctl enable zfs-import cache
sudo systemctl enable zfs-mount
sudo systemctl enable zfs-import.target
sudo systemctl enable zfs-import-scan
sudo systemctl enable zfs-share

# Restart all ZFS services

sudo systemctl restart zfs-import-cache
sudo systemctl restart zfs-import-scan
sudo systemctl restart zfs-mount
sudo systemctl restart zfs-share
