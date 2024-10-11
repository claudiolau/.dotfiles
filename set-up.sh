#!/bin/bash

mkdir -p ~/.config
eval "$(/opt/homebrew/bin/brew shellenv)"
stow -t $HOME/.config .config
ln -s ~/.dotfiles/.zshenv ~/.zshenv
