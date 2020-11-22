#!/usr/bin/env bash

set -e

packages=(tmux vim git)

if [ ! $# -eq 0  ]; then
  packages=("$@")
fi

echo "Configuring ${packages[*]}..."
stow -vt ~ "${packages[@]}"

if [[ ${packages[*]} == *"vim"*  ]]; then
  if [ ! -d ~/.vim/bundle/Vundle.vim ]
  then
    echo "Installing vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
  echo "Setup vim..."
  vim +'PluginInstall' +'qa!'
fi

if [[ ${packages[*]} == *"git"*  ]]; then
  echo "Setup git..."
  git config --global core.excludesfile ~/.gitignore_global
fi

echo "Done!"

