#!/bin/bash

# Directory containing your configuration files
config_dir="$HOME/.config"

# List all directories in the current directory and loop through them
for package in $(ls -d */); do
    # Remove trailing slash from the directory name
    package="${package%/}"
    # Check if the directory is not named "bin"
    if [ "$package" != "bin" ]; then
        stow -t "$config_dir/$package" --restow "$package"
    fi
done

