" vim-plug settings
call plug#begin()
Plug 'https://github.com/myusuf3/numbers.vim.git'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/cespare/vim-toml'
Plug 'https://github.com/lambdatoast/elm.vim.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set nu
set ruler
set termguicolors
syntax on

colorscheme my-paintbox
" Highlight the 81 colume
let &colorcolumn=81

" vim-airline theme "
let g:airline_theme='lucius'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
