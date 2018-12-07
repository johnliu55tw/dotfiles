" vim-plug settings
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'https://github.com/myusuf3/numbers.vim.git'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/freeo/vim-kalisi'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/mfukar/robotframework-vim'
Plug 'benmills/vimux'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set nu
set ruler
set termguicolors
syntax on

colorscheme kalisi
set background=dark
" Highlight the 81st column
let &colorcolumn=81
" Set the leader key to z
let mapleader='z'

" " Copy to clipboard
vnoremap <Leader>y  "+y
nnoremap <Leader>Y  "+yg
nnoremap <Leader>y  "+y
" " Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P

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

" ALE
"
" Enable quickfix
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
" Keyboard shortcuts
nmap <C-s>s <Plug>(ale_toggle)
nmap <C-s>j <Plug>(ale_next_wrap)
nmap <C-s>k <Plug>(ale_previous_wrap)
nmap <C-s>r <Plug>(ale_reset)

" Buffer management shortcuts
set hidden
nmap <C-n><C-n> :bnext<CR>
nmap <C-n>n :bnext<CR>
nmap <C-n>p :bprevious<CR>
nmap <C-n>q :bwipeout<CR>

" Easy Motion
let g:EasyMotion_do_mapping = 0 " Disable defautl mappings
let g:EasyMotion_smartcase = 1 " Turn on case insensitive feature

" 'f' for Search first 2 characters
nmap f <Plug>(easymotion-overwin-w)
" 's' for Word motion
nmap s <Plug>(easymotion-overwin-f2)
" JK motions: Line motions
map <Leader>h <Plug>(easymotion-linebackward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
" Enhanced Search
map  / <Plug>(easymotion-sn)
" Disable indentLine in *.json file. See Yggdroot/indentLine/issues/172
autocmd Filetype json let g:indentLine_enabled = 0
" vimux
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>vx :VimuxInterruptRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>
