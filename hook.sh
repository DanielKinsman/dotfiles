#!/bin/bash

set -e

rm -f ~/.bashrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
rm -rf ~/.config/nvim
ln -s ~/dotfiles/.config/nvim ~/.config/nvim
rm -f ~/.gitconfig
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
rm -f ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
rm -rf ~/.vim
ln -s ~/dotfiles/.vim ~/.vim
rm -f ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc


echo "Install python neovim module so vim-jedi works:
    shopt -s extglob
    for py in /usr/bin/python[2-3].+([0-9]); do
        \$py -m pip install neovim
    done"

pushd ~/dotfiles
git submodule update --init --recursive
popd
