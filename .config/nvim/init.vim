call plug#begin(stdpath('data') . '/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'ciaranm/detectindent'

call plug#end()

let mapleader = ","
map <Leader> <Plug>(easymotion-prefix)

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:onedark_terminal_italics = 1
colorscheme onedark

set number
