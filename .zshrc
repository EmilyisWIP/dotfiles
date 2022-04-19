export ZSH=$HOME/.oh-my-zsh
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

HIST_STAMPS="yyyy-mm-dd"


# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(zoxide  zsh-autosuggestions zsh-syntax-highlighting)
# zsh-interactive-cd
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
source /home/subject05/.aliases.sh
source <(cod init $$ zsh)
source <(/usr/local/bin/starship init zsh --print-full-init)

cat ~/.cache/wal/dracula_seq


bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word

# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
export PATH="/home/subject05/Custom/Programs/:$PATH"

clear;
[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
