call plug#begin(stdpath('data') . '/plugged')

Plug 'rafi/awesome-vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'haya14busa/vim-easyoperator-phrase'

call plug#end()

let g:nord_italic = 1
let g:nord_italic_comments = 1
colorscheme nord

set number cursorline
