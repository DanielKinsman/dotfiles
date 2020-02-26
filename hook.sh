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
rm -f ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc

if [[ -f /usr/bin/zsh ]]
then
    echo "Setting default shell to zsh, you will be asked for password"
    chsh -s /usr/bin/zsh
fi

pushd ~/dotfiles
git submodule update --init --recursive
popd

echo "Installing python neovim modules so vim-jedi works"
shopt -s extglob
for py in /usr/bin/python3.+([0-9]); do
    $py -m pip install --user neovim
done
