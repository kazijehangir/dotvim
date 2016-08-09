" Run Pathogen plugin manager on startup
execute pathogen#infect()

" Basic config commands
syntax on
filetype plugin indent on

set tabstop=4 shiftwidth=4 expandtab smarttab

" Key Remappings

"map ctrl+n to toggle NERD Tree
map <C-n> :NERDTreeToggle<CR>

" Plugin specific config

"Open NERDTree automatically when vim starts with no file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

