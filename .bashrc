#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1="[\$?][\[$(tput sgr0)\]\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;15m\]]\w \$\[$(tput sgr0)\] "
alias uri_tep='cd /home/wilton/Dropbox/UnB/TEP/URI/Iniciante/'
alias backup_dados='cd /run/media/wilton/Backup'
alias is-on-gpu='cat /proc/acpi/bbswitch'
alias ls='ls --color=auto'
alias fixsteam1='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias fixsteam2='find ~/.local/share/Steam/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias suspend="sudo systemctl suspend"
alias go="gnome-open"
BROWSER=/usr/bin/google-chrome-stable
EDITOR=vim
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
#source ~/.liquidprompt/liquidprompt
#complete -cf sudo
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="$PATH:$HOME/.rvm/bin"
export NVM_DIR="$HOME/.nvm"
export ANDROID_HOME="/opt/android-sdk"
#Set the line below in the /etc/bash.bashrc file
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # Add RVM to PATH for scripting
