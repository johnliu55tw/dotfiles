hi clear
if exists("syntax_on")
    syntax reset
endif

runtime colors/darkblack.vim

let g:colors_name = "my-darkblack"

hi clear Normal
hi clear Search
hi clear IncSearch

hi Normal	guifg=white	guibg=black	ctermfg=white ctermbg=black
hi Search	guifg=black 	guibg=yellow	ctermfg=black ctermbg=yellow cterm=none term=none
hi IncSearch	guifg=black	guibg=yellow	ctermfg=black ctermbg=yellow cterm=bold,underline

