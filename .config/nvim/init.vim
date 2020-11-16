call plug#begin(stdpath('data') . '/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'sheerun/vim-polyglot'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dracula/vim', {'as':'dracula'}

call plug#end()

map <Leader> <Plug>(easymotion-prefix)

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

colorscheme dracula

