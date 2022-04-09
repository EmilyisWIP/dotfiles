alias aliases="$EDITOR /home/subject05/.aliases.sh"
alias bat="batcat --theme ansi-dark"
alias walb="wal -q -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f 3-11 | sed 's/.$//' )"


alias palette="wal --preview -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f 3-11 | sed 's/.$//' )"

alias crun="cargo run -q --release"
alias crund="cargo run --release"


$ atomopen () {
            if echo $(which $@) | grep -q found
              ;echo "Opening $@"
              ;then atom $@;
            else atom_which=$(which $@)
              ;echo "Opening file in \$PATH"
              ;echo $atom_which
              ; atom $atom_which
            ;fi
            }
$ search () {
              found=$(fd $@ | fzf -1)
            if [ $found ]
              ;then echo "Opening $found"
              ;atom $found

            else echo "Query empty"
              ;fi
            }




$ cdls() { cd "$@"  && exa -ah; }
$ cdl() { cd "$@"  && exa -1ah; }





alias fd="fd -IiH"
alias atom="atomopen"
alias dotdesktop="update-desktop-database ~/.local/share/applications ; echo Refreshed"
alias cd="cdls"
alias py="python3"
alias image="eog"
alias fdf="fd -iIt f"
alias fdd="fd -iIt d"


alias push="git push"
$ commit() {git commit -m "$@" -a}

alias zshrc="$EDITOR ~/.zshrc"
alias bashrc="$EDITOR ~/.bashrc"
alias alacrittycfg="$EDITOR ~/.config/alacritty/alacritty.yml"
alias neofetchcfg="$EDITOR ~/.config/neofetch/config.conf"

alias chrome="/usr/bin/google-chrome-stable --enable-features=WebUIDarkMode --force-dark-mode %U"
alias modpack="cmpdl"
alias disk="duf"


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



# Wallpapers
alias abstract="wal -q -i Pictures/Wallpapers/abstract.jpg"

#fuck
fuck () {
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
