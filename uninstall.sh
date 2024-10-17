#!/bin/bash

###############################################################################
# Remove Package Manager                                                      # 
###############################################################################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

###############################################################################
# Remove symlink                                                              #
###############################################################################
  
stow -D -t $HOME/.config .config
stow -D $HOME etc
rm -rf ./config
