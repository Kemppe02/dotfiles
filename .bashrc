#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\W $ '   #'[\u@\h \W]\$ '

# Config alias for dotfiles git repository
alias config='/usr/bin/git --git-dir=/home/axel/dotfiles --work-tree=/home/axel'

# lf ueberzug image preview
#lf () {
#		LF_TEMPDIR="$(mktemp -d -t lf-tempdir-XXXXXX)"
#		LF_TEMPDIR="$LF_TEMPDIR" lf-run -last-dir-path="$LF_TEMPDIR/lastdir" "$@"
#		if [ "$(cat "$LF_TEMPDIR/cdtolastdir" 2>/dev/null)" = "1" ]; then
#				cd "$(cat "$LF_TEMPDIR/lastdir")"
#		fi
#		rm -r "$LF_TEMPDIR"
#		unset LF_TEMPDIR
#}

# Starship prompt
eval "$(starship init bash)"
