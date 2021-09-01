" Load the plugins installed by vim-plug
source $HOME/.config/nvim/init-plug.vim

" Toggle relative and absolute line number while switching mode and focus
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" nvim starts slow for *.py files
" See https://github.com/neovim/neovim/issues/2437
let g:python_host_prog  = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

"General settings
set nu
set ruler
set termguicolors
syntax on
set inccommand=nosplit
set lazyredraw
set smartcase
set ignorecase
set mouse=a

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
" Highlight columns
let &colorcolumn="80,100"
highlight ColorColumn guibg=#8693AB
" Set the leader key to <Space>
nnoremap <SPACE> <Nop>
let mapleader=' '

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
let g:airline_theme='gruvbox'
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
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
" Uncomment to enable quickfix
" let g:ale_set_quickfix = 0
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1

" Enable ALE auto completion
let g:ale_completion_enabled = 1
" Keep the sign gutter open
let g:ale_sign_column_always = 1
" Set Linters
let g:ale_linters = {'rust': ['rls'], 'python': ['flake8', 'pylsp']}

" Use old warning message format of cppcheck
" https://github.com/dense-analysis/ale/issues/2994
let g:ale_c_cppcheck_options = '--enable=style --template=cppcheck1'
" Keyboard shortcuts for linter
nmap <Leader>ss <Plug>(ale_toggle)
nmap <Leader>sj <Plug>(ale_next_wrap)
nmap <Leader>sk <Plug>(ale_previous_wrap)
" Go to definitaion and Find reference
nmap <Leader>d :ALEGoToDefinition<CR>
nmap <Leader>r :ALEFindReferences<CR>

" Start deoplate at startup
let g:deoplete#enable_at_startup = 1

" Buffer management shortcuts
set hidden
map <C-m> :bnext<CR>
map <C-n> :bprevious<CR>
map <C-q> :bp<bar>sp<bar>bn<bar>bd<CR>

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

" vim-go
let g:go_gocode_autobuild = 0
