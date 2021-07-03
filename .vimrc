syntax off
filetype plugin indent on
set nocompatible

set viminfofile=NONE
set clipboard=exclude:.*

set noswapfile nowritebackup nobackup
set incsearch ignorecase smartcase
set wildmenu
set showcmd
set autoindent

"set softtabstop=4
"set shiftwidth=4
set softtabstop=2
set shiftwidth=2
set expandtab

set completeopt=longest,menuone
set wildmode=longest,full
set omnifunc=syntaxcomplete#Complete
highlight Pmenu ctermbg=white

set timeout
set ttimeoutlen=0

let g:markdown_folding = 1
set foldmethod=indent
set nofoldenable

inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <S-Tab> <C-p>

set path=**
nnoremap <C-p> :find *
