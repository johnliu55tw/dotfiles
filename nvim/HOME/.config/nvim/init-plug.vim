" Install (if not exists) vim-plug
" See https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'dense-analysis/ale'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/cespare/vim-toml'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/easymotion/vim-easymotion.git'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/mfukar/robotframework-vim'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug '~/.fzf'
Plug 'sirtaj/vim-openscad'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/vim-scripts/openscad.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components'
call plug#end()
