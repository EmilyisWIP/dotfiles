source ~/.config/zsh/zsh-snap/znap.zsh
unalias -m *
# Path to your oh-my-zsh installation.
export ZSH="/home/subject05/.oh-my-zsh"
export XDG_CONFIG_HOME="/home/subject05/.config"
export EDITOR="atom"

. ~/.aliases.sh




# Theme
# ZSH_THEME="dracula"
ZSH_THEME="spaceship"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14


plugins=(
zoxide
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"



cat ~/.cache/wal/sequences




export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
compdef _apt apt-fast=apt-get
source <(cod init $$ zsh)
