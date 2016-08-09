# dotvim
Repository for synchronizing Vim plugins and configuration across machines.

Installation:

    git clone git://github.com/kazijehangir/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update