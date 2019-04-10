" Install (if not exists) vim-plug
" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

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
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
call plug#end()
