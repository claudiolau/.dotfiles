.PHONY: install

install:
	./install.sh
link:
	stow -t $(HOME) .config 
unlink:
	stow -D -t $(HOME) .config
dump: 
	brew bundle dump -f 
