# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
HISTFILESIZE=100000
HISTSIZE=100000

# Alias
#alias ls='ls -G'
alias ll='ls -l'
alias la='ll -a'
alias v='vim .'

PATH=$HOME/.local/bin:$HOME/bin:/usr/local:/usr/local/bin:$PATH

export LESSCHARSET=utf-8
export PATH
