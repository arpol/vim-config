##Installation:

git clone git://github.com/arpol/vim-config.git ~/.config/vim

##Create symlinks:

ln -s ~/.config/vim/vimrc ~/.vimrc
ln -s ~/.config/vim/gvimrc ~/.gvimrc

##Switch to the `~/.config/vim` directory, and fetch submodules:

cd ~/.vim
git submodule init
git submodule update

