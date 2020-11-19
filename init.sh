#!/usr/bin/env bash

set -e

echo "Configuring ..."
stow -vt ~ tmux vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]
then
  echo "Installing vundle ..."
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
echo "Setup vim ..."
vim +'PluginInstall' +'qa!'
echo "Done!"

