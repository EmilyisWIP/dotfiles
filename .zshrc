#Emily's .zshrc :>

ZSH="/home/subject05/.oh-my-zsh"
XDG_CONFIG_HOME="/home/subject05/.config"
EDITOR="atom"

source ~/.aliases.sh
alias aliases="xdg-open /home/subject05/.aliases.sh"

ZSH_THEME="spaceship"

plugins=(zoxide
        zsh-autosuggestions
        zsh-interactive-cd
        zsh-syntax-highlighting
      )

source $ZSH/oh-my-zsh.sh
source <(cod init $$ zsh)




cat ~/.cache/wal/sequences



# Path
export PATH="/home/subject05/.local/bin:$PATH"
export PATH="/home/subject05/.cargo/bin/:$PATH"
