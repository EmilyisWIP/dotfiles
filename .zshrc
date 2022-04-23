plugins=(
zoxide
zsh-autosuggestions
# zsh-autocomplete
zsh-syntax-highlighting
)
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
source /home/subject05/.oh-my-zsh/oh-my-zsh.sh

# zsh-interactive-cd

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
source /home/subject05/.aliases
source <(cod init $$ zsh)
source <(/usr/local/bin/starship init zsh --print-full-init)
source "$HOME/.qfc/bin/qfc.sh"

cat ~/.cache/wal/dracula_seq


bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word

# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
export PATH="/home/subject05/Custom/Programs/:$PATH"

# clear;

HIST_STAMPS="yyyy-mm-dd"
clear
