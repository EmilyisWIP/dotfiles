alias walb="wal -q -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f 3-11 | sed 's/.$//' )"
alias palette="wal --preview -i $(gsettings get org.gnome.desktop.background picture-uri | cut -d "/" -f 3-11 | sed 's/.$//' )"


alias py="python3"
alias image="eog"
alias aliases="atom /home/subject05/.aliases.sh"
alias bat="batcat --theme ansi-dark"
alias zshrc="atom ~/.zshrc"
alias alacrittycfg="atom ~/.config/alacritty/alacritty.yml"
alias neofetchcfg="atom ~/.config/neofetch/config.conf"
alias chrome="/usr/bin/google-chrome-stable --enable-features=WebUIDarkMode --force-dark-mode %U"
alias modpack="cmpdl"
alias disk="duf"




alias update="sudo apt-fast update && sudo apt-fast upgrade"
alias aptupd="sudo apt-fast update"
alias aptupg="sudo apt-fast upgrade"
alias install="sudo apt-fast install"
alias remove="sudo apt remove"
alias purge="sudo apt purge"








# Wallpapers
alias abstract="wal -q -i Pictures/Wallpapers/abstract.jpg"
alias mushroom='wal -q -i Pictures/Wallpapers/mushroom.png'
alias railroads="wal -q -i Pictures/Wallpapers/railroads.jpeg"
alias cave="wal -q -i Pictures/Wallpapers/cave.png"



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
