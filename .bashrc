#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

EDITOR=emacsclient
VISUAL=emacsclient

upload () 
{ 
    file_size=`wc -c $1 | cut -d " " -f1`
    max_size=536870912
    min_age=30
    max_age=365
    retention=`echo "scale=200;$min_age + ( $min_age - $max_age ) * ( ( ( $file_size / $max_size ) - 1 ) ^ 3 )" | bc`
    retention=`echo "scale=2;$retention/1" | bc`
    echo -e "The file will expire in $retention days"
    if [ $# -eq 0 ]; then
        echo -e "No arguments specified. Usage:\necho upload /tmp/test.md\ncat /tmp/test.md | upload test.md";
        return 1;
    fi;
    curl -F"file=@$1" https://0x0.st
}

e() {
	if [ $# -ne 0 ]; then
	  emacsclient -nw "$@"
	elif [ -n "$DISPLAY" ]; then
	  emacsclient -c -n
	else
	  emacsclient -c
	fi
}

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

. /home/dj/miniconda3/etc/profile.d/conda.sh
export PATH=/home/dj/.local/bin:/home/dj/bin:$PATH
# export PATH=/home/dj/miniconda3/bin:$PATH
