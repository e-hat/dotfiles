#!/bin/bash 
# script for copying my dotfiles to where I save them
d="$HOME/dev/dotfiles"
cp -r ~/dev/scripts "$d"
cp ~/.zshrc "$d"
cp ~/.vimrc "$d"
cp ~/.vim/coc-settings.json "$d"
cp ~/.tmux.conf "$d"

