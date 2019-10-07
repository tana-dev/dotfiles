# set files
cp ./bash/.bash_profile ~/.bash_profile
cp ./bash/.bashrc ~/.bashrc
cp ./vim/.vimrc.noplugin ~/.vimrc
cp ./tmux/.tmux.conf ~/.tmux.conf
cp ./git/.gitconfig ~/.gitconfig

# make dir
mkdir -p ~/.vim/plugin/
mkdir -p ~/.vim/dict/
mkdir -p ~/.vim/colors/

# php dictionary
php -r '$f=get_defined_functions();echo join("\n",$f["internal"]);'|sort > ~/.vim/dict/php.dict
