# Emily's aliases :>

ALIASES="/home/subject05/.aliases.sh"
ZSHRC="~/.zshrc"
NUCFG="$nu.config-path"
BASHRC="~/.bashrc"
ALACRITTYCFG=".config/alacritty/alacritty.yml"
# KITTYCFG=".config/kitty/kitty.conf"
NEOFETCHCFG="~/.config/neofetch/config.conf"
FISHRC="~/.config/fish/config.fish"
STARSHIP_CONFIG="~/.config/starship.toml"
EDITOR="atom --in-process-gpu"
# WEZTERM_CONFIG_FILE="~/.config/wezterm/wezterm.lua"

# APT-FAST, PACKAGES
alias update="sudo apt-fast update"
alias upgrade="sudo apt-fast upgrade"
alias aptup="sudo apt-fast update; sudo apt-fast upgrade"
alias aptupd="sudo apt-fast update"
alias aptupg="sudo apt-fast upgrade"
alias install="sudo apt-fast install"
alias reinstall="sudo apt-fast reinstall"
alias remove="sudo apt remove"
alias purge="sudo apt purge"
alias autoremove="sudo apt autoremove"

# Navigation
alias cd="cd-list"
alias zd="zd-list"
alias z="zd-list"

# Configs
alias aliases="xdg-open $ALIASES"
alias zshrc="xdg-open $ZSHRC"
alias bashrc="xdg-open $BASHRC"
alias alacrittycfg="xdg-open $ALACRITTYCFG"
alias wezcfg="xdg-open $WEZTERM_CONFIG_FILE"
# alias kittycfg="xdg-open $KITTYCFG"
alias neofetchcfg="xdg-open $NEOFETCHCFG"
alias fishrc="xdg-open $FISHRC"
alias starshipcfg="xdg-open $STARSHIP_CONFIG"

# Misc
# alias nautilus="nautilus $(pwd)"
alias atom="atom --in-process-gpu"
alias batcat="batcat --theme base16"
alias bat="batcat"
alias ls="exa --icons --group-directories-first"
alias ll="exa -1"
alias py="python3"
alias fd="fd -IiH"
alias img="eog"
alias disk="duf"
alias chrome="/usr/bin/google-chrome-stable --enable-features=WebUIDarkMode --force-dark-mode %U"
alias atom


alias modpack="cmpdl"


alias crun="cargo run -q --release"
alias crund="cargo run --release"

alias clipboard="xclip -sel clip"

alias starship-zsh="source <(/usr/local/bin/starship init zsh --print-full-init)"

alias fzf="fzf --color=fg:#f8f8f2,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#21222c,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4"





# Wal
alias walb="wal -q -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f3-11 | sed 's/.$//' )"

alias palette="wal --preview -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f3-11 | sed 's/.$//' )"

alias abstract="wal -q -i Pictures/Wallpapers/abstract.jpg"
alias dracula="wal -q --theme dracula"

# Git
$ commit () { git commit -m "$@" -a }
$ push () { git push }
$ gp () { git commit -m "$@" -a; push }


# Scripts

$ edit () {
  if echo $(which $@) | grep -q "found"
  ;then echo "File \"$@\" not found"
    ;echo "Creating \"$@\""
    ;$EDITOR $@;
  else atom_which=$(which $@)
    ;echo "Opening file in \$PATH"
    ;echo $atom_which
    ;xdg-open $atom_which
  ;fi
unset atom_which}

$ search () {
  found=$(fd $@ | fzf -1)
  if [ $found ]
  ;then echo "Opening $found"
    ;xdg-open $found
  else echo "Query empty"
  ;fi
  unset found
}

$ which-copy () {
  if echo $(which $@) | grep -q "not found"
  ;then echo "$@ Not found"
else echo $(which $@); echo $(which $@) | xclip -sel clip;fi
}


$ cd-list() {
  if [ -z $1 ]; then
    # echo "0 set"
    if [ -d $1 ] || [ $1 = "-" ]; then   \cd; ls;
  else ansic --red -n "➜ "; ansic --red "No such directory";fi;

  elif [ ! -z $2 ]; then
    # echo "2 set"
    if [ -d $1 ] || [ $1 = "-" ]; then  \cd $1; ls $2;
  else ansic --red -n "➜ "; ansic --red "No such directory";fi;

  else
    # echo "1 set"
    if [ -d $1 ] || [ $1 = "-" ]; then  \cd $1; ls;
  else ansic --red -n "➜ "; ansic --red "No such directory";fi;
  fi
}

$ zd-list() {
  if [ -z $1 ]; then
    # echo "0 set"
    \z; ls;
  elif [ ! -z $2 ]; then
    # echo "2 set"
    \z $1; ls $2;
  else
    # echo "1 set"
    \z $1; ls;
  fi
}
