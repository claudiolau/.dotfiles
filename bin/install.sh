#!/bin/sh

# package manager 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

# zsch config 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
brew install bat && git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat


# setup https://spaceship-prompt.sh/config/intro/f
# custom config for shell 
curl -sS https://starship.rs/install.sh | sh
 
# tool manager version
brew install asdf

# applications
brew install --cask amethyst
brew install --cask tableplus
brew install httpie
brew install --cask httpie
brew install --cask docker
brew install --cask raycast

# activity monitor 
brew install ncurses automake autoconf gcc
 
# custom bar 
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew tap FelixKratz/formulae
brew install sketchybar
 
# fonts 
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
 
# keyboards 
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd


