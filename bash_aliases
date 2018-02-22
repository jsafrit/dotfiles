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
alias updateme='sudo apt update && sudo apt upgrade'
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'
alias nyancat='nc -v nyancat.dakko.us 23'
alias httpd='python -m SimpleHTTPServer'
# alias goproxy='ssh -D 6666 constp -N'
# alias checkproxy='netstat -ntlp | grep :6666'

alias gohi='ssh -t jsafrit@192.168.0.199 screen -R'
alias goho='ssh -t jsafrit@grizzly.dnsdojo.com screen -R'
alias gogg='ssh -t jsafrit@grizzlyguru.com screen -R'

# alias goj='ssh -t jsafrit@staging.truveon.com screen -R'
# alias gojp='ssh -t jsafrit@truefficiency.truveon.com screen -R'

alias gbast='ssh ubuntu@bastion.truveon.com'
alias gcmds='ssh ubuntu@commander-staging.truveon.com'
alias gcmdp='ssh ubuntu@commander-production.truveon.com'

alias gdbs='ssh -L 5431:truveon-staging-db.truveon.com:5432 ubuntu@bastion.truveon.com'
alias gdbp='ssh -L 5431:truveon-production-db.truveon.com:5432 ubuntu@bastion.truveon.com'

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

function calc() { python -c "from __future__ import division; from math import *; print($*)"; }

function cmdfu() { curl "http://www.commandlinefu.com/commands/matching/$(echo '$@' | sed 's/ /-/g')/$(echo -n $@ | base64)/plaintext" ;}

function down4me() { curl -s "http://downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g'; }

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
