#!/bin/sh

brew install neovim
brew install ripgrep 
brew install fd
brew install tmux 
brew install stow

# custom config for shell 
curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
brew install spaceship
echo "source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrc
 
 # setup https://spaceship-prompt.sh/config/intro/f

 # lua 
 brew install stylua
