# some more ls aliases
alias ll='ls -alF'
alias more='less'
alias la='ls -A'
alias l='ls -CF'

alias h="history"
alias gno="gnome-open"
alias pu="pushd"
alias po="popd"
alias updateme='sudo apt-get update && sudo apt-get upgrade'

# git aliases
#alias g="git "
alias gs="git status "
alias gh="git hist "
alias ga="git add "
alias gg="gitg "

function g {
    if [[ $# > 0 ]]; then
        git "$@"
    else
        git status
    fi
}

function psg { 
    ps -efw | grep $* | grep -v grep
}

function alarm {
    sleep $*; gnome-open /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
}
