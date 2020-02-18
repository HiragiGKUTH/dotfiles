#!/bin/sh

# zshrc setting
cp .zshrc ~/

# neovim setting
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/

## install minimum dein
mkdir -p ~/.nvim/bundles

wget https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
sh ./installer.sh ~/.nvim/bundles


# clean
rm installer.sh

# set zsh as default
chsh -s /usr/bin/zsh

echo 'Settings applied!, Please reload shell (`source ~/.zshrc`)'
