# Add Homebrew binary directory to the PATH
# This allows you to use Homebrew-installed binaries without specifying their full path.
export PATH="/opt/homebrew/bin:$PATH"

# Set the location of the Starship configuration file
# This is where Starship will look for its configuration settings.
export STARSHIP_CONFIG=~/starship/starship.toml

# Initialize Starship in the Zsh shell
# This command integrates Starship with Zsh, enabling its prompt features.
eval "$(starship init zsh)"

# Initialize The Fuck in Zsh
# The Fuck is a command-line tool that suggests corrections for mistyped commands.
# This line sets up an alias to use The Fuck easily in the terminal.
eval $(thefuck --alias)

# Initialize Zoxide in Zsh
# Zoxide is a smarter cd command that remembers your directory usage and allows
# quick navigation to frequently accessed directories.
eval "$(zoxide init zsh)"
alias z="cd"
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# mise
eval "$(mise activate zsh)"

# zsh-extensions 
# Activate autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Smart Aliasing 
alias v="nvim" 
alias cls="clear"
alias ls="eza --icons=always"
alias ll="ls -l"
alias la="ls -a"
