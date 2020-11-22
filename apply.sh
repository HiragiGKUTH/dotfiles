#!/bin/sh

# zshrc setting
cp _.zshrc ~/.zshrc

# tmux setting
cp _.tmux.conf ~/.tmux.conf

# set zsh as default
chsh -s /usr/bin/zsh

echo 'Settings applied!, Please reload shell (`source ~/.zshrc`)'
