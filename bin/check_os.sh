#!/bin/bash

# Check if the operating system is macOS
if [[ "$(uname)" == "Darwin" ]]; then
    echo "Running on macOS"
    
    # Hide the Dock
    defaults write com.apple.dock autohide -bool true
    # Remove all apps from the Dock
    defaults write com.apple.dock persistent-apps -array
    # Hide the macOS menu bar
    defaults write NSGlobalDomain _HIHideMenuBar -bool true
    # Restart the Dock to apply changes
    killall Dock

    # You can add any additional macOS-specific commands here
    # Disable Spotlight hotkey (Cmd + Space)
    defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 64 "{enabled = 0;}"
    defaults write com.apple.symbolichotkeys AppleSymbolicHotKeys -dict-add 65 "{enabled = 0;}"

    # Enable Reduce Motion
    defaults write com.apple.Accessibility reduceMotion -bool true 
   # Refresh SystemUIServer to apply the changes
    killall SystemUIServer


else
    echo "Not running on macOS"
fi

