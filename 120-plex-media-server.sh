#!/bin/sh

# Download the deb package with wget

wget -q https://downloads.plex.tv/plex-media-server-new/1.16.2.1321-ad17d5f9e/debian/plexmediaserver_1.16.2.1321-ad17d5f9e_amd64.deb

sudo dpkg -i plex*.deb

sudo systemctl enable plexmediaserver

sudo systemctl start plexmediaserver
