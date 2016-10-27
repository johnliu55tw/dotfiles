" vim-plug settings
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'https://github.com/myusuf3/numbers.vim.git'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/cespare/vim-toml'
Plug 'https://github.com/lambdatoast/elm.vim.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'https://github.com/guns/vim-clojure-static.git'
Plug 'https://github.com/tpope/vim-fireplace.git'
Plug 'https://github.com/freeo/vim-kalisi'
call plug#end()

set nu
set ruler
set termguicolors
syntax on

colorscheme kalisi
set background=dark
" Highlight the 81st column
let &colorcolumn=81

" vim-airline
"
" theme
let g:airline_theme='kalisi'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Indention
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" Syntastic
"
" Default setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
" Enable flake8 for syntastic (flake8 needs to be installed)
let g:syntastic_python_checkers = ['flake8']
" Shortcuts
nmap <C-s>r :SyntasticReset<CR>
nmap <C-s>c :SyntasticCheck<CR>

" Buffer management shortcuts
set hidden
nmap <C-n><C-n> :bnext<CR>
nmap <C-n>n :bnext<CR>
nmap <C-n>p :bprevious<CR>
nmap <C-n>q :bwipeout<CR>
