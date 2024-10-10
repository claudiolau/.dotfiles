#!/bin/bash

###############################################################################
# Package Manager							      # 
###############################################################################

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle install

###############################################################################
# Bin									      #
###############################################################################

# Loop through all .sh files in the ./bin directory
for script in ./bin/*.sh; do
    if [ -f "$script" ]; then
        echo "Executing $script"
        sudo "$script"  # Execute the script with sudo
    fi
done

