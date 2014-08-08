# Access and reload files
settings_file="~/.zshrc"
alias_file="~/.dotfiles/zsh/aliases.zsh"
config_file="~/.dotfiles/zsh/config.zsh"

alias refreshsettings='source '$settings_file
alias settings='e '$settings_file
alias aliases='e '$alias_file
alias config='e '$config_file

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
alias hosts='e /private/etc/hosts'

# Get external IP address
alias ip='curl ipecho.net/plain; echo'

# View most used commands
alias historystats='history|awk '\''{print $2}'\''|awk '\''BEGIN {FS="|"} {print $1}'\''|sort|uniq -c|sort'

# Hidden files
alias showHiddenFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideHiddenFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'