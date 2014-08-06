# Access and reload files
settings_file="~/.zshrc"
alias_file="~/.dotfiles/zsh/aliases.zsh"
config_file="~/.dotfiles/zsh/config.zsh"

alias refreshsettings='source '$settings_file
alias settings='subl '$settings_file
alias aliases='subl '$alias_file
alias config='subl '$config_file

# Directory navigation
alias la='ls -a'
alias ..='cd ..'

# Create a new directory and enter it
function md(){
    mkdir -p "$@" && cd "$@"
}

# Syntax-highlighted cat. Requires Pygments.
alias c='pygmentize -O style=monokai -f console256 -g'

# Edit hosts file
alias hosts='subl /private/etc/hosts'

# Get external IP address
alias ip='curl ipecho.net/plain; echo'

# View most used commands
alias historystats='history|awk '\''{print $2}'\''|awk '\''BEGIN {FS="|"} {print $1}'\''|sort|uniq -c|sort'