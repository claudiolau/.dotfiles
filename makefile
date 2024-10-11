install:
	./install.sh
link:
	mkdir -p ~/.config 
	eval "$(/opt/homebrew/bin/brew shellenv)" && stow -t $HOME/.config .config
unlink:
	stow -D -t $(HOME) .config
dump: 
	brew bundle dump -f 
