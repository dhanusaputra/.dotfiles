#!/usr/bin/env bash

echo "Configuring ..."
stow -vt ~ tmux vim
echo "Installing vundle ..."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 2> /dev/null
echo "Setup vim ..."
vim +'PluginInstall' +'qa!'
echo "Done!"

