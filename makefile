
default: help

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: install 
install: # install deps to use nvim
	./bin/install.sh

.PHONY: create 
create: # create directory for custom configurations
	@fd -td -d 1 . --exclude bin | xargs -I {} mkdir -p ~/.config/{}
.PHONY: remove
remove: # remove directory for custom configurations
	@fd -td -d 1 . --exclude bin | xargs -I {} rm -rf ~/.config/{}
.PHONY: up 
up: # add symlink for custom configurations
	@./bin/stow.sh
	@cd ~/ ; ln -s ~/.dotfiles/.zshrc
down: # remove sysmlink for custom configurations 
	@./bin/unstow.sh
