# some more ls aliases
alias ll='ls -alF'
alias more='less'
alias la='ls -A'
alias l='ls -CF'

alias h="history"
alias greph="history | grep "
alias gno="gnome-open"
alias pu="pushd"
alias po="popd"
alias updateme='sudo apt-get update && sudo apt-get upgrade'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias goproxy='ssh -D 6666 constp -N'
alias checkproxy='netstat -ntlp | grep :6666'

alias gohi='ssh -t jsafrit@192.168.0.199 screen -R'
alias goho='ssh -t jsafrit@grizzly.dnsdojo.com screen -R'

alias gor='ssh -t rnortman@staging.truveon.com screen -R'
alias gorp='ssh -t rnortman@truefficiency.truveon.com screen -R'

alias gojd='ssh -t jsafrit@dev001.truveon.com screen -R'
alias goj='ssh -t jsafrit@staging.truveon.com screen -R'
alias gojp='ssh -t jsafrit@truefficiency.truveon.com screen -R'

alias gpsqls='ssh -L 127.0.0.1:5000:localhost:5432 jsafrit@staging.truveon.com'
alias gpsqlp='ssh -L 127.0.0.1:5000:localhost:5432 jsafrit@truefficiency.truveon.com.truveon.com'

# alias gpolar='ssh localhost -p 2222'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
#alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

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

function mcd () { mkdir -p "$@" && cd "$@"; }

function alarm {
    sleep $*; gnome-open /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
}

function ws { if [[ $STY ]]; then   echo "On screen: $STY";  fi; }

function screen-ls {
    screen -ls
    if [[ $STY ]]; then
        echo -e "\033[1mCurrently in screen $STY\033[0m"
#        echo -e '\E[37;44m'"\033[1mCurrently in screen $STY\033[0m"
#    else
#        echo "Not currently in a screen."
    fi
}
