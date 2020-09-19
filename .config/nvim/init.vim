call plug#begin(stdpath('data') . '/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'

call plug#end()

let g:onedark_terminal_italics = 1
colorscheme onedark

set number
set wildignore+=*/node_modules/**,*/.git/**

" Keybindings
let mapleader = ","
nnoremap <C-p> :find ./**/*
map <Leader> <Plug>(easymotion-prefix)
