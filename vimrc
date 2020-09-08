"Dont need vi compatibility.
set nocompatible

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
" - Calling this in the beginning to be able to invoke plugins in
"   external.vimrc.
call plug#begin('~/.vim/plugged')

"-------------------------------------------------
" Google | External Specific Config 
" ________________________________________________

let g:is_corp = (hostname() =~# 'googlers.com' || hostname() =~# 'google.com') && !(hostname() =~# 'roam.corp.google.com')

if g:is_corp
  source google.vimrc
else
  source external.vimrc
endif

"------------------------------------------------

"-------------------------------------------------
" General Plugins Setup
"-------------------------------------------------

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

" Map split navigation to be easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"TODO(): Fix this, could not get it to work, using <space>c<space> to toggle comments.
" Map ctrl+/ to nerdcommenter toggle comment
"map <C-_>   <Plug>NERDCommenterToggle
"vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

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
