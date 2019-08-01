#!/bin/bash

sed -e '/Binary/s/^/#/g' -i /etc/apt/sources.list
sed -i 's/main/main contrib non-free/gI' /etc/apt/sources.list

apt update
