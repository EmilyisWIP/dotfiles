# Emily's zshrc :>
plugins=(
#zoxide
fzf-tab
zsh-autosuggestions
zsh-syntax-highlighting
# zsh-autocomplete
)
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

source /home/subject05/.oh-my-zsh/oh-my-zsh.sh

source ~/.aliases
alias aliases="xdg-open ~/.aliases"
alias zshrc="xdg-open ~/.zshrc"
eval "$(zoxide init zsh)"
source <(/usr/local/bin/starship init zsh --print-full-init)
(cat ~/.cache/wal/sequences &)
source ~/.config/broot/launcher/bash/br
source <(cod init $$ zsh)
bindkey '^[[1;5D' emacs-backward-word
bindkey '^[[1;5C' emacs-forward-word

# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
export PATH="/home/subject05/Custom/Programs/:$PATH"
export PATH="/home/subject05/Custom/Programs/Games/:$PATH"
export PATH="/home/subject05/.emacs.d/bin:$PATH"



HIST_STAMPS="yyyy-mm-dd"

zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':fzf-tab:*' switch-group ',' '.'
zstyle ':fzf-tab:*' fzf-command fzf



export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#282a36,hl+:#bd93f9
--color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4
'
