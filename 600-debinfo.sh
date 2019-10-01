#!/bin/sh

user=$USER@
OS="Debian $(cat /etc/debian_version)"
Desktop="${XDG_CURRENT_DESKTOP}"
Kernel="$(uname -sr)"
Uptime="$(uptime -p | sed 's/up //')"
Packages="$(dpkg -l | grep -c ^i)"
Shell="$(basename "$SHELL")"
CPU="$(lscpu | grep Model\ name | sed 's/name:\ //' | sed 's/(TM) //')"
GPU="$(glxinfo -B | grep Device: | sed 's/Device: //' | sed 's/(TM) //')"
RAM="$(free -h | awk '/^Mem:/ {print $3 "/" $2}')"


echo '          _,met$$$$$gg.        '            $user$(hostname)
echo '       ,g$$$$$$$$$$$$$$$P.     '            OS: $OS
echo '     ,g$$P""       """Y$$.".   '            Desktop: $Desktop			 
echo '    ,$$P"              `$$$."  '            Kernel: $Kernel
echo '   ,$$P       ,ggs.     `$$b:  '            Uptime: $Uptime
echo '  `d$$"     ,$P""   .    $$$   '            Packages: $Packages
echo '   $$P      d$"     ,    $$P   '            Shell: $Shell
echo '   $$:      $$.   -    ,d$$"   '            CPU: $CPU
echo '   $$\;      Y$b._   _,d$P     '            GPU: $GPU
echo '   Y$$.    `.`"Y$$$$P""        '            RAM: $RAM      
echo '   `$$b      "-.__             '
echo '    `Y$$                       '
echo '     `Y$$.                     '
echo '       `$$b.                   '
echo '         `Y$$b.                '
echo '            `"Y$b._            '
echo '                `""""          '

