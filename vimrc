"Dont need vi compatibility.
set nocompatible

"-------------------------------------------------
" Google Specific Plugins
" ________________________________________________

source /usr/share/vim/google/google.vim

Glug codefmt
Glug codefmt-google
augroup autoformat_settings
  autocmd FileType borg,gcl,patchpanel AutoFormatBuffer gclfmt
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType jslayout AutoFormatBuffer jslfmt
  autocmd FileType markdown AutoFormatBuffer mdformat
  autocmd FileType ncl AutoFormatBuffer nclfmt
  autocmd FileType python AutoFormatBuffer pyformat
  autocmd FileType textpb AutoFormatBuffer text-proto-format
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
augroup END
Glug piper plugin[mappings]
Glug relatedfiles plugin[mappings]
Glug add_usings plugin[mappings]
Glug youcompleteme-google

"-------------------------------------------------

"-------------------------------------------------
" External Plugins Setup
"-------------------------------------------------

" Verfy Vim-Plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()

"-------------------------------------------------

"-------------------------------------------------
" Plugin specific config
"-------------------------------------------------

" Start neocomplete
""let g:neocomplete#enable_at_startup = 1

" Open NERDTree automatically when vim starts with no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close Vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" MiniBuffExplorer Navigate with ctrl+arrow keys
"let g:miniBufExplMapWindowNavArrows = 1

"------------------------------------------------

"-------------------------------------------------
" Key Remappings
"-------------------------------------------------

let mapleader=" " 

" Map ctrl+f to toggle Nerd Finder
map <leader>f :NERDTreeFind<CR>

" Map ctrl+n to toggle Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"map split navigation to be easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"map ctrl+/ to nerdcommenter toggle comment
"inoremap <C-_> <C-o>:call NERDComment(0,"toggle")<C-m>
"nnoremap <C-_> :call NERDComment(0,"toggle")<C-m>

"-------------------------------------------------

"-------------------------------------------------
" General Config
"-------------------------------------------------

":colorscheme flattown
" Basic config commands
syntax on
"set hidden
"indent wth 4 spaces instead of tab
"set tabstop=4 shiftwidth=4 
set expandtab smarttab

"more natural splitting behavior
set splitbelow
set splitright

"-------------------------------------------------

filetype plugin indent on
