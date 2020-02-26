#!/bin/bash

set -e

if [[ -f $(which pacman) ]]
then
    pacman -S --noconfirm zsh neovim tmux
elif [[ -f $(which apt-get) ]]
then
    apt-get install -y zsh neovim tmux
else
    echo 2>"i don't know how to install packages so do it yourself"
    exit 1
fi

echo "Not installing oh-my-zsh, do it yourself, try 'yay -S oh-my-zsh-git'"
