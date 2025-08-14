# ==============================================================================
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
eval "$(starship init zsh 2>/dev/null)"

# Smarter cd command 
eval "$(zoxide init zsh)"
alias cd="z"

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"

# Set up development environment
eval "$(mise activate zsh)"

# zsh-extensions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# ==============================================================================
# Aliasing
# ==============================================================================

# editor
export EDITOR=nvim
alias v="nvim"
alias zell="zellij"

# python-env 
alias pyenv='source .venv/bin/activate'
alias pyenvd='deactivate'

# node-env 
alias nd='npm run dev'
alias nb='npm run build'
alias nl='npm run lint'
alias nt='npm run test'

# git
alias lg='lazygit'

# list files
alias ls="eza --icons=always"
alias lt="eza --tree --level=2 --long --icons --git -a"
alias ll="ls -l"
alias la="ls -a"

# clear 
alias cls="clear"
alias q="exit"

# ==============================================================================
# Zell Config 
# ==============================================================================

zellij_tab_name_update() {
    if [[ -n $ZELLIJ ]]; then
        local current_dir=$PWD
        if [[ $current_dir == $HOME ]]; then
            current_dir="~"
        else
            current_dir=${current_dir##*/}
        fi
        command nohup zellij action rename-tab $current_dir >/dev/null 2>&1
    fi
}

zellij_tab_name_update
chpwd_functions+=(zellij_tab_name_update)

# ==============================================================================
# Secret Related Dependencies
# ==============================================================================
[ -f "$HOME/.secrets/.env" ] && source "$HOME/.secrets/.env" 
