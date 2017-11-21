# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
HISTFILESIZE=100000
HISTSIZE=100000

# Alias
alias ssh="ssh -A"
alias ll='ls -l'
alias la='ls -la'
alias v='vim .'
alias c="grep \"Host \" ~/.ssh/config | grep -v \"\*\""
alias bp='vi ~/.bash_profile'
alias br='vi ~/.bashrc'

PATH=$HOME/.local/bin:$HOME/bin:/usr/local:/usr/local/bin:$PATH

export PS1="[\u@\h \W]\\$ "
export LESSCHARSET=utf-8
export PATH
