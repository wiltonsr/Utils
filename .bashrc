#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\$?][\[$(tput sgr0)\]\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]]\w \$\[$(tput sgr0)\] "

#----------------ALIAS----------------#
alias uri_tep='cd /home/wilton/Dropbox/UnB/TEP/URI/Iniciante/'
alias gpu-is-on='cat /proc/acpi/bbswitch'
alias ls='ls --color=auto'
alias fixsteam1='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias fixsteam2='find ~/.local/share/Steam/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias suspend="sudo systemctl suspend"
alias go="gnome-open"
alias gs="git status"
alias gb="git branch"

#Setting de defaults app
BROWSER=/usr/bin/google-chrome-stable
EDITOR=vim

#Set partial history search with up key
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#Set the rvm path
export PATH="$PATH:$HOME/.rvm/bin"

#Set the android path
export ANDROID_HOME="/opt/android-sdk"

# Add RVM to PATH for scripting
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
