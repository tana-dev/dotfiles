# set files
mkdir -p ~/.vim/plugin
mkdir -p ~/.vim/dict
cp ./vim/.vimrc.noplugin ~/.vimrc
cp ./tmux/.tmux.conf ~/.tmux.conf

# vim plugin
cd ~/.vim/plugin/
git clone https://github.com/vim-scripts/AutoComplPop.git

# php dictionary
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict

