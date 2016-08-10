" Run Pathogen plugin manager on startup
execute pathogen#infect()

:colorscheme flattown
"start neocomplete
""let g:neocomplete#enable_at_startup = 1
" Basic config commands
syntax on
set hidden
filetype plugin on
"indent wth 4 spaces instead of tab
set tabstop=4 shiftwidth=4 expandtab smarttab
"more natural splitting behavior
set splitbelow
set splitright
let mapleader=" "

" Key Remappings

"map ctrl+n to toggle NERD Tree
map <C-n> :NERDTreeToggle<CR>
"map split navigation to be easier
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"map ctrl+/ to nerdcommenter toggle comment
inoremap <C-_> <C-o>:call NERDComment(0,"toggle")<C-m>
nnoremap <C-_> :call NERDComment(0,"toggle")<C-m>

" Plugin specific config

"Open NERDTree automatically when vim starts with no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Close Vim if only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"MiniBuffExplorer Navigate with ctrl+arrow keys
let g:miniBufExplMapWindowNavArrows = 1
