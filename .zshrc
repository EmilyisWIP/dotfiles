# Path to your oh-my-zsh installation.
export ZSH="/home/subject05/.oh-my-zsh"
export XDG_CONFIG_HOME="/home/subject05/.config"
export EDITOR='atom'

. ~/.aliases.sh



# Theme
ZSH_THEME="eastwood"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
#

plugins=(
zoxide
zsh-autosuggestions
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"
source /usr/share/zsh/functions/Completion/Debian/_apt-fast


cat ~/.cache/wal/sequences



source <(cod init $$ zsh)

export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
