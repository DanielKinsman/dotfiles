#!/bin/bash

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

pushd ~/dotfiles
git submodule init
git submodule update
popd
