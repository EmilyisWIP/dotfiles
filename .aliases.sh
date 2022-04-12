# Emily's aliases :>

  ALIASES="/home/subject05/.aliases.sh"
  ZSHRC="~/.zshrc"
  BASHRC="~/.bashrc"
  ALACRITTYCFG="~/.config/alacritty/alacritty.yml"
  NEOFETCH="~/.config/neofetch/config.conf"
  FISH=".config/fish/config.fish"

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


# Configs
alias aliases="xdg-open $ALIASES"
alias zshrc="xdg-open $ZSHRC"
alias bashrc="xdg-open $BASHRC"
alias alacrittycfg="xdg-open $ALACRITTYCFG"
alias neofetchcfg="xdg-open $NEOFETCH"
alias fishrc="xdg-open $FISH"
# Misc
alias nautilus="nautilus -w $(pwd)"

alias batcat="batcat --theme ansi-dark"
alias bat="batcat"

alias exa="\exa --icons --group-directories-first"
alias py="python3"
alias fd="fd -IiH"
alias img="eog"
alias disk="duf"
alias chrome="/usr/bin/google-chrome-stable --enable-features=WebUIDarkMode --force-dark-mode %U"

alias modpack="cmpdl"

alias null=">/dev/null 2>&1"

alias crun="cargo run -q --release"
alias crund="cargo run --release"

alias clip="xclip -sel clip"

alias starship-init="source <(/usr/local/bin/starship init zsh --print-full-init)"





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

$ fuck () {
               TF_PYTHONIOENCODING=$PYTHONIOENCODING;
               export TF_SHELL=zsh;
               export TF_ALIAS=fuck;
               TF_SHELL_ALIASES=$(alias);
               export TF_SHELL_ALIASES;
               TF_HISTORY="$(fc -ln -10)";
               export TF_HISTORY;
               export PYTHONIOENCODING=utf-8;
               TF_CMD=$(
                   thefuck THEFUCK_ARGUMENT_PLACEHOLDER $@
               ) && eval $TF_CMD;
               unset TF_HISTORY;
               export PYTHONIOENCODING=$TF_PYTHONIOENCODING;
               test -n "$TF_CMD" && print -s $TF_CMD
             }

$ open () {
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
       z; exa
     elif [ ! -z $2 ]; then
       # echo "2 set"
       z $1  >/dev/null 2>&1 || echo "\033[0;31mNo such dir\033[0m"; exa ${@: 2};
     else
       # echo "1 set"
       if [ -d $1 ]; then z $1  >/dev/null 2>&1; exa;
     else z; exa $1;
       fi
   fi
           }
