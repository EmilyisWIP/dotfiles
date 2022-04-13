#Emily's .zshrc :>

ZSH="/home/subject05/.oh-my-zsh"
XDG_CONFIG_HOME="/home/subject05/.config"
EDITOR="atom"

source $ZSH/oh-my-zsh.sh
# unalias -a
source ~/.aliases.sh
alias aliases="xdg-open /home/subject05/.aliases.sh"

#ZSH_THEME="spaceship"

plugins=(zoxide
        zsh-autosuggestions
        zsh-interactive-cd
        zsh-syntax-highlighting)

source <(cod init $$ zsh)
source <(/usr/local/bin/starship init zsh --print-full-init)

cat ~/.cache/wal/sequences

# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"


bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word
