#!/bin/bash

# Check if the operating system is macOS
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Running on macOS"
    
    # Hide the Dock
    defaults write com.apple.dock autohide -bool true
    # Apply the changes
    killall Dock

    # You can add any additional macOS-specific commands here

else
    echo "Not running on macOS"
fi

