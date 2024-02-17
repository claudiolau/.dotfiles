#!/bin/sh

# dependencies for nvim
brew install neovim
brew install ripgrep 
brew install fd
brew install tmux 
brew install stow


# terminal 
brew install --cask iterm2
brew install zsh
brew install git 

# setup https://spaceship-prompt.sh/config/intro/f
# custom config for shell 
curl -sS https://starship.rs/install.sh | sh
eval "$(starship init bash)"
 
# tool manager version
brew install asdf

# applications
brew install --cask amethyst
brew install --cask tableplus
brew install httpie
brew install --cask httpie
brew install --cask docker
brew install --cask raycast
