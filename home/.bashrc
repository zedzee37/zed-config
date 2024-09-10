# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec startx
fi

alias gitgen='ssh-keygen -t ed25519 -C "carsonuderitz@gmail.com"'

function clip {
    echo $1 | xclip -selection clipboard
}

function fclip {
    cat $1 | xclip -selection clipboard
}

function paste {
    xclip -o -clipboard > $1
}
