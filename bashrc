# ---pseudozoid---
#
# ~/.bashrc
 
export EDITOR="nvim"
export SUDO_PROMPT="$(tput setaf 1 bold)Password:$(tput sgr0) "


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto --hyperlink=auto'
alias grep='grep --color=auto'
alias code='code --force-device-scale-factor=1.5'
alias start='exec Hyprland'
alias wifimenu='~/.local/bin/rofi-wifi-menu.sh'
alias rm='rm -I -v'
alias cp='cp -iv'
alias mv='mv -iv'
alias work='~/programming/scripts/pomodoro.sh'

#prompt
PS1='\[\e[33m\][\[\e[32m\]\u\[\e[33m\]@\[\e[34m\]\H\[\e[0m\] \[\e[37m\]\W\[\e[33m\]]\[\e[91m\]\\$\[\e[0m\] '

#additional features
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
shopt -s checkwinsize

#nvm 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export PATH=$PATH:/home/pseudozoid/.spicetify
