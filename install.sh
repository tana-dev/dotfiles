# set files
mkdir -p ~/.vim/plugin/
mkdir -p ~/.vim/dict/
mkdir -p ~/.vim/colors/
cp ./vim/.vimrc.noplugin ~/.vimrc
cp ./tmux/.tmux.conf ~/.tmux.conf

# vim plugin
cd ~/.vim/plugin/
if [ ! -e ~/.vim/plugin/AutoComplPop ]; then
    git clone https://github.com/vim-scripts/AutoComplPop.git
fi
cd ~/.vim/colors/
if [ ! -e ~/.vim/colors/molokai ]; then
    git clone https://github.com/tomasr/molokai.git
fi

# php dictionary
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict
