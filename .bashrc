# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export VISUAL=vim
export EDITOR="$VISUAL"
export PATH="$PATH:/usr/local/i386elfgcc/bin"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

USER=ljylhank
MAIL=ljylhank@student.hive.fi

alias cgen="/home/susi/42_cpp_class_generator/cgen.sh"
alias vim="nvim"
