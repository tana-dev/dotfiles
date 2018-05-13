# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
HISTFILESIZE=100000
HISTSIZE=100000

# Path
PATH=$PATH:$HOME/.local/bin
PATH=$PATH:$HOME/bin
PATH=$PATH:/usr/local
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/scala/bin
PATH=$PATH:/usr/local/go/bin

# Export
export PS1="[\u@\h \W]\\$ "
export LESSCHARSET=utf-8
export PATH

