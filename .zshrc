#Emily's .zshrc :>

export ZSH="/home/subject05/.oh-my-zsh"
export XDG_CONFIG_HOME="/home/subject05/.config"
export EDITOR="atom"

. ~/.aliases.sh
alias aliases="xdg-open /home/subject05/.aliases.sh"

ZSH_THEME="spaceship"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14


plugins=(zoxide
        zsh-autosuggestions
        zsh-syntax-highlighting
        zsh-interactive-cd
      )

source $ZSH/oh-my-zsh.sh




cat ~/.cache/wal/sequences




export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
compdef _apt apt-fast=apt-gmet
source <(cod init $$ zsh)
