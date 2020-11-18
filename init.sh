#!/usr/bin/env bash

echo "Configuring..."
stow -vt ~ tmux vim
vim +'PlugInstall --sync' +qa
echo "Done!"

