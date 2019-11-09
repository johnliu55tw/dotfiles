" Load the plugins installed by vim-plug
source $HOME/.config/nvim/init-plug.vim

set nu
set ruler
set termguicolors
syntax on

colorscheme kalisi
set background=dark
" Highlight columns
let &colorcolumn="80,100"
highlight ColorColumn guibg=#8693AB
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
" Uncomment to enable quickfix
" let g:ale_set_quickfix = 0
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1
" Keep the sign gutter open
let g:ale_sign_column_always = 1
" Set Rust linter to RLS
let g:ale_linters = {'rust': ['rls']}
" Keyboard shortcuts
nmap <C-s>s <Plug>(ale_toggle)
nmap <C-s>j <Plug>(ale_next_wrap)
nmap <C-s>k <Plug>(ale_previous_wrap)
nmap <C-s>r <Plug>(ale_reset)

" Buffer management shortcuts
set hidden
nmap <C-m> :bnext<CR>
nmap <C-n> :bprevious<CR>
nmap <C-q> :bwipeout<CR>

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

" FZF
nnoremap <C-p> :FZF<CR>
