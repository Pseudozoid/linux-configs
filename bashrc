# ---pseudozoid---
#
# ~/.bashrc
 
export EDITOR="nvim"
export SUDO_PROMPT="$(tput setaf 1 bold)Password:$(tput sgr0) "
export MANPAGER="nvim +Man!"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto --hyperlink=auto'
alias grep='grep --color=auto'
alias code='code --force-device-scale-factor=1.5'
alias start='exec Hyprland'
alias wifimenu='~/.local/bin/rofi-wifi-menu.sh'
alias rm='rm -I -v'
alias cp='cp -iv'
alias mv='mv -iv'
alias update='sudo pacman -Syu'
alias nf='neofetch'
alias todo='nvim ~/notes/journal/agenda.md'
alias zoid='~/projects/shell/zoid'
alias ch='nvim ~/.config/hypr'
alias cw='nvim ~/.config/waybar'
alias ck='nvim ~/.config/kitty/kitty.conf'
alias shutdown='~/programming/scripts/power.sh'
alias journal='nvim ~/notes/journal'

# prompt
eval "$(starship init bash)"

# additional features
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
shopt -s checkwinsize

export PATH=$PATH:/home/pseudozoid/.spicetify
export PATH=$PATH:/home/pseudozoid/programming/scripts/
export PATH="$HOME/.local/bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
#rust
. "$HOME/.cargo/env"
