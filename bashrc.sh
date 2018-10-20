# check if this is a login shell
[ "$0" = "-bash" ] && export LOGIN_BASH=1

# run bash_profile if this is not a login shell
[ -z "$LOGIN_BASH" ] && source ~/.bash_profile

# load shared shell configuration
source ~/.shrc

# History
export HISTFILE="$HOME/.bash_history"
export HISTCONTROL="ignoredups"
export PROMPT_COMMAND="history -a"
export HISTIGNORE="&:ls:[bf]g:exit"

# Aliases and functions
alias ll='ls -lG'
e()
{
    emacs "$@" &
}
enw()
{
    emacs -nw "$@"
}

# use a matplotlib backend suitable for OSX
export MPLBACKEND="TkAgg"
