#!/bin/bash

###############################################################################
# Package Manager							                                                #
###############################################################################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle install

###############################################################################
# Bin									                                                        # 
###############################################################################

for script in $HOME/.dotfiles/bin/*.sh; do
    if [ -f "$script" ]; then
        echo "Executing $script"
        sudo "$script"
    fi
done
