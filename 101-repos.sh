#!/bin/bash

PS3='Please enter select your repo: '
options=("stretch-backports" "testing" "unstable" "experimental" "quit")
select opt in "${options[@]}"
do
	case $opt in
		"stretch-backports")
			echo "Adding Stretch Backports Repository"
			cat /repos/stretch-backports >> /etc/apt/sources.list
			break
			;;
		"testing")
			echo "Adding Testing Repositories"
			cat /repos/testing >> /etc/apt/sources.list
			break
			;;
		"unstable")
			echo "Adding Unstable Repositories"
			cat /repos/unstable >> /etc/apt/sources.list
			break
			;;
		"experimental")
			echo "Adding Experimental Repositories"
			cat /repos/experimental >> /etc/apt/sources.list
			break
			;;
		"quit")
			break
			;;
		*) echo "invalid option $REPLY";;
	esac
done

