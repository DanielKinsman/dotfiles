colorscheme lucius
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noswapfile
set hidden
set ignorecase
set smartcase
set incsearch
set background=dark
set autoindent
set t_Co=256

execute pathogen#infect()
syntax on
filetype indent plugin on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

