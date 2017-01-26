#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lX'
alias la='ls -alX'
alias cp='cp -iv'
alias mv='mv -iv'
PS1='[\u@\h \W]\$ '

export EDITOR="nvim"
export PATH=$HOME/bin:$PATH
export TERM="xterm-256color"

xinput set-prop "AlpsPS/2 ALPS DualPoint Stick" "Evdev Wheel Emulation" 1
xinput set-prop "AlpsPS/2 ALPS DualPoint Stick" "Evdev Wheel Emulation Button" 2
xinput set-prop "AlpsPS/2 ALPS DualPoint Stick" "Evdev Wheel Emulation Timeout" 200

# Git autocompletion script
source /home/john/scripts/git-completion.bash

# Setup the tmuxifier
eval "$(tmuxifier init -)"
