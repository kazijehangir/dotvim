# dotvim
Repository for synchronizing Vim plugins and configuration across machines.

[N-Optional] are steps for using NeoVim instead of Vim.

## Installation:

[N-Optional] Install NeoVim (debian):
  sudo apt-get install neovim

## Clone config:
  git clone git://github.com/kazijehangir/dotvim.git ~/.vim

## Create symlinks:
  ln -s ~/.vim/vimrc ~/.vimrc
  
[N-Optional] Symlink vimrc to init.vim
  1. Create  |init.vim| file:
    mkdir ~/.config/nvim
    touch ~/.config/nvim/init.vim
    
  2. Add these contents to the file:
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath
    source ~/.vimrc  

## Install Vim-Plug
  Run this:
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  [N-Optional] Run this too:
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
