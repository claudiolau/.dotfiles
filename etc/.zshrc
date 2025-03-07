# Set Up
# ==============================================================================
# Homebrew-installed binaries without specifying their full path.
export PATH="/opt/homebrew/bin:$PATH"
# export PATH=$HOME/bin:/usr/local/bin:$PATH -- not ARM based
export HOMEBREW_NO_INSTALL_CLEANUP=TRUE
export HOMEBREW_AUTO_UPDATE_SECS=43200

# Set the location of the Starship configuration file
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

# Smarter cd command 
eval "$(zoxide init zsh)"
alias cd="z"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"
export FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always {} || cat {}' --preview-window=right:60%:wrap"

# Set up development environment
eval "$(mise activate zsh)"

# zsh-extensions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# yazi 
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# ==============================================================================
# Custom Aliasing
# ==============================================================================

# Editor
alias v="nvim"
alias ls="eza --icons=always"
alias ll="ls -l"
alias la="ls -a"
alias lt="eza --tree --level=2 --long --icons --git"
alias lta="lt -a"
alias cls="clear"
alias q="exit"
alias zell="zellij"
export EDITOR=nvim

# ==============================================================================
# Secret Related Dependencies
# ==============================================================================
[ -f "$HOME/.secrets/.env" ] && source "$HOME/.secrets/.env" 



