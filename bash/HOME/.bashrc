#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias grepe='grep -iRnH'
alias ls='ls --color=auto'
alias ll='ls -lX'
alias la='ls -alX'
alias cp='cp -iv'
alias mv='mv -iv'
PS1='[\u@\h \W]\$ '

export EDITOR="nvim"
export PATH=$HOME/bin:$PATH
export TERM="screen-256color"

# Git autocompletion script
source $HOME/scripts/git-completion.bash
