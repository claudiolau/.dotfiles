default: help

.PHONY: help
help: # Show help for each of the Makefile recipes.
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done

.PHONY: dev
dev:
	rm -rf ~/.config/nvim
	cd ~/.config/ && mkdir nvim
	cd ../ && stow --target=/Users/claudiolau/.config/nvim --restow .dotfiles

.PHONY: install 
install: # install deps to use nvim
	./bin/set-up.sh

.PHONY: force 
force: #git force fast  
	git add --all 
	git commit --amend --no-edit
	git push -f

.PHONY: style
style: 
	stylua .