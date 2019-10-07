# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Alias
alias ssh="ssh -A"
alias ll='ls -l'
alias la='ls -la'
alias v='vim .'
alias mvim='mvim --remote-tab'
alias c="grep \"Host \" ~/.ssh/config | grep -v \"\*\""
alias bp='vi ~/.bash_profile'
alias br='vi ~/.bashrc'
alias relogin='exec $SHELL -l'

# ------------------------------------
# Docker aliases
# ------------------------------------

# docker
alias d="docker"

# docker-compose
alias dcom='docker-compose'

# Get the latest container ID
alias dl="docker ps --latest --quiet"

# List containers
alias dps="docker ps"

# List containers including stopped containers
alias dpa="docker ps --all"

# List images
alias di="docker images"

# List images including intermediates
alias dia="docker images --all"

# Tree images including intermediates
alias dit="docker images --tree"

# Get an IPaddress of a container
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run a daemonized container
alias drd="docker run --detach --publish-all"

# Run an interactive container
alias dri="docker run --interactive --tty --publish-all"

# Remove all containers
alias drm='docker rm $(docker ps --all --quiet)'

# Remove all images
alias drmi='docker rmi $(docker images --quiet)'

# Remove all containers and images by force
alias dclean='docker kill $(docker ps --all --quiet); drm; drmi;'


# List all aliases relating to docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)='\(.*\)'/\1    => \2/"| sed "s/'\\\'//g"; }

# ------------------------------------
# Docker function
# ------------------------------------
function dbash() {
	command docker exec -it $1 bash
}

function dsu() {
	command docker exec -it $1 su - $2
}

# ------------------------------------
# other function
# ------------------------------------
command_not_found_handle() {
cat << 'EOS'
 _   _       _     _____                     _
| \ | | ___ | |_  |  ___|__  _   _ _ __   __| |
|  \| |/ _ \| __| | |_ / _ \| | | | '_ \ / _` |
| |\  | (_) | |_  |  _| (_) | |_| | | | | (_| |
|_| \_|\___/ \__| |_|  \___/ \__,_|_| |_|\__,_|
EOS
}

if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=xbfxcxdxbxegedabagacad
    alias ls='ls -G'
else
#    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi
