alias p='sudo pacman'
alias o="xdg-open"

alias l='ls -CF'
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias wmi='ssh dawjur@lts.wmi.amu.edu.pl'
alias blaszak='ssh siulkilulki@150.254.77.206'
alias blaszakfs='sshfs siulkilulki@150.254.77.206:/home/siulkilulki ~/blaszak' 
alias poleng='ssh root@10.30.0.11'
alias mysftp='sftp -i ~/.ssh/id_rsa_sftp guest@150.254.77.206'
