# set files
cp ./bash/.bash_profile ~/.bash_profile
cp ./vim/.vimrc.noplugin ~/.vimrc
cp ./tmux/.tmux.conf ~/.tmux.conf
cp ./git/.gitconfig ~/.gitconfig

# make dir
mkdir -p ~/.vim/plugin/
mkdir -p ~/.vim/dict/
mkdir -p ~/.vim/colors/
mkdir -p ~/vim_colors/

# vim plugin
cd ~/.vim/plugin/
if [ ! -e ~/.vim/plugin/AutoComplPop ]; then
	git clone https://github.com/vim-scripts/AutoComplPop.git
fi
cd ~/vim_colors/
if [ ! -e ~/.vim/colors/molokai.vim ]; then
	git clone https://github.com/tomasr/molokai.git
	mv molokai/colors/molokai.vim ~/.vim/colors/
fi

# php dictionary
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict
