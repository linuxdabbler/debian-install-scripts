#!/bin/sh

URL=https://vivaldi.com/download/
URL2=https://downloads.vivaldi.com/stable/

wget $URL

if [ -e index.html ]
then
    new_deb_pkg=$(cat index.html| grep "vivaldi-stable" | awk '{print $30}'| cut -c44-81)
    echo Downloanding amd64.deb package.
    wget $URL2 -o $new_deb_pkg
    status=$?
    
    if [ $status -eq 8 ]
    then 
	echo File downloaded.
    fi
fi
if [ -e $new_deb_pkg ]
then
    echo Installing amd64.deb package.
    sudo dpkg -i $new_deb_pkg
else
   echo Error installing deb package.
fi
