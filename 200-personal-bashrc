# cd into the home directory
cd  

# backup the bashrc just to be safe
cp .bashrc .bashrc.bak

# bashrc customization
echo "figlet -f smslant $USER | lolcat" >> .bashrc
echo "screenfetch" >> .bashrc

# enable Powerline Shell

echo "if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi" >> .bashrc


# setting up aliases
echo "alias update='sudo apt update'" >> .bashrc

echo "alias upgrade='sudo apt upgrade -yy'" >> .bashrc

echo "alias search='sudo apt-cache search'" >> .bashrc

echo "alias install='sudo apt install'" >> .bashrc

echo "alias senable='sudo systemctl enable'" >> .bashrc

echo "alias sstart='sudo systemctl start'" >> .bashrc

echo "alias srestart='sudo systemctl restart'" >> .bashrc

echo "alias root='sudo su'" >> .bashrc

echo "alias nasbox='ssh timelord@192.168.0.19'" >> .bashrc

echo "alias kill='sudo pkill'" >> .bashrc

# restart bash
bash

# change directories back into the script folder
cd debian-install-scripts
