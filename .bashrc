# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\W $ '   #'[\u@\h \W]\$ '

# Config alias for dotfiles git repository
alias dots='/usr/bin/git --git-dir=/home/axel/.dotfiles --work-tree=/home/axel'

# Starship prompt
eval "$(starship init bash)"

# Pywal command
export PATH="${PATH}:${HOME}/.local/bin/"

# Spicetify
export PATH=$PATH:/home/axel/.spicetify
