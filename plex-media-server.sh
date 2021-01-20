#!/bin/sh

#Enable it in the repos
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
#Add the GPG Key
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
#Download Plex
wget -q https://downloads.plex.tv/plex-media-server-new/1.16.2.1321-ad17d5f9e/debian/plexmediaserver_1.16.2.1321-ad17d5f9e_amd64.deb
#Install Plex
sudo dpkg -i plex*.deb
#Enable Plex to start at boot
sudo systemctl enable plexmediaserver
#Start Plex
sudo systemctl start plexmediaserver
