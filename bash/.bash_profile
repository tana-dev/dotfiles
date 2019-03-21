# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
HISTFILESIZE=100000
HISTSIZE=100000

# RBENV_ROOT
RBENV_ROOT="$HOME/.rbenv"
if [ -e $RBENV_ROOT ]; then
	eval "$(rbenv init -)"
fi

export GOPATH=$HOME/Go
export GOBIN=$GOPATH/bin

# Path
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/scala/bin
PATH=$PATH:/usr/local/go/bin
PATH=$PATH:$RBENV_ROOT/bin

HISTCONTROL=ignoreboth
HISTIGNORE="fg*:bg*:history*"

# Export
#export PS1="[\u@\h \W]\\$ "
#export PS1="\[\e[36;40m\][\u@\h \W]\\$ \[\e[m\]"
export PS1='\033[01;34m[\u@@\h \W]\$\033[00m '
export LESSCHARSET=utf-8
export PATH
