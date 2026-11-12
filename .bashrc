# ~/.bashrc
[ -z "$PS1" ] && return
HISTSIZE=10000
HISTCONTROL=ignoreboth
shopt -s histappend
PS1='\[\e[1;32m\]\u@\h\[\e[0m\]:\w\$ '

alias ll='ls -alF'
alias gs='git status'
alias gl='git log --oneline --graph'
export EDITOR=vim

# deploy shop
alias deploy='rsync -az ./dist/ rkit@200.234.122.220:/srv/shop/ && echo deployed 👻'
