#!/bin/bash

mkdir -p ~/.config
eval "$(/opt/homebrew/bin/brew shellenv)"
stow -t $HOME/.config .config
stow -t $HOME etc
