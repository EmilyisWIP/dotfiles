# Emily's zshrc :>
plugins=(
zoxide
fzf-tab
zsh-autosuggestions
# zsh-autocomplete
zsh-syntax-highlighting
)
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

source /home/subject05/.oh-my-zsh/oh-my-zsh.sh

source ~/.aliases
alias aliases="xdg-open ~/.aliases"
alias zshrc="xdg-open ~/.zshrc"

source <(/usr/local/bin/starship init zsh --print-full-init)
(cat ~/.cache/wal/sequences &)

source <(cod init $$ zsh)
# source ~/.cache/wal/colors-tty.sh
# (cat ~/.cache/wal/dracula_seq &)

bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word

# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
export PATH="/home/subject05/Custom/Programs/:$PATH"


HIST_STAMPS="yyyy-mm-dd"
