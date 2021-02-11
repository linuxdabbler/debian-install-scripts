#!/bin/bash
# Install neovim with apt
sudo apt install neovim

# Install vim plug from github
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
#  If you want to use my neovim config as a starting point or to get some ideas...
#  https://github.com/linuxdabbler/personal-dot-files
#  place init.vim in ~/.config/nvim then open it and run the next two commands
#  :so %  
#  :PlugInstall
