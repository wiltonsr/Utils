#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Check the size of window at each command and resize when necessary.
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend

PROMPT_COMMAND="my_ps1; history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

#Avoid duplicate entries in history
export HISTCONTROL=ignoreboth:erasedups

# My personality PS1 variable
function my_ps1(){
    local EXIT="$?"             # This needs to be first
    PS1=""
    local red='\[\e[0;31m\]'
    local gre='\[\033[38;5;10m\]'
    local whi='\[\e[0;37m\]'
    local blu='\[\e[1;34m\]'
    if [ $EXIT != 0 ]; then
      local exit_status="[${red}$EXIT${whi}]"
    else
      local exit_status="[${gre}$EXIT${whi}]"
    fi
    local user_and_host="${whi}[${gre}\u@\h${whi}]"
    local current_path="${blu}\w"
    local final_simbol="${whi}\$"
    local break_line='\n'
    export PS1+="${exit_status}${user_and_host}${current_path}${break_line}${final_simbol} "
}

# Ignore case on auto-completion
if [[ $iatest > 0 ]]; then bind "set completion-ignore-case on"; fi

#----------------ALIAS----------------#
alias bd='cd "$OLDPWD"'
alias htop='sudo htop'
alias minidlnad='minidlnad -R'
alias go_unb='cd /home/wilton/Dropbox/UnB'
alias workspace='cd /home/wilton/Workspace'
alias gpu-is-on='cat /proc/acpi/bbswitch'
alias ls='ls --color=auto'
alias la='ls -Alh'
alias fixsteam1='find ~/.steam/root/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias fixsteam2='find ~/.local/share/Steam/ \( -name "libgcc_s.so*" -o -name "libstdc++.so*" -o -name "libxcb.so*" \) -print -delete'
alias fixsteam3='find ~/.steam/root/ -name "libgpg-error.so*" -print -delete'
alias openports='netstat -nape --inet'
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias suspend="sudo systemctl suspend"
alias turnoff-monitor="xset -display :0.0 dpms force off"
alias op="xdg-open"
alias gs="git status"
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias ga="git add"
alias gl="git log"
alias gr="git remote -v"

#Setting to not be disturbed by Ctrl-S ctrl-Q in terminals
stty -ixon

#Setting de defaults app
BROWSER=/usr/bin/google-chrome-stable
EDITOR=vim

#Setting more line to history commands
HISTSIZE=500000
HISTFILESIZE=500000

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
export ANDROID_HOME=/opt/android-sdk

#Set the pyenv paths.
#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
export EDITOR=vim

if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi
