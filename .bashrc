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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/axel/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/axel/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/axel/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/axel/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

