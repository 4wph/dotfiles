syntax on
filetype indent on
filetype plugin on
colorscheme jellybeans

" -SETTINGS-

set number
set autoindent
set incsearch
set nofoldenable
set cursorline

set showcmd
set nocompatible
set hidden
set laststatus=2
set noswapfile
set nobackup
set noerrorbells
set ignorecase
set smartcase

set path +=**
set wildmenu
set wildmode=longest:full,full

set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_fastbrowse = 0

" -TERMINAL-

if has('termguicolors')
	set termguicolors
endif

if &term == "alacritty"
	let &term = "xterm-256color"
endif

" -STATUSLINE-

autocmd VimEnter * let branch=system("git branch 2>/dev/null | grep '^*'| colrm 1 1 | sed 's/$/ /'")[:-2]

set statusline=
set statusline+=%#DiffText#
set statusline+=\ %f\ 
set statusline+=%#ToolbarButton#
set statusline+=%{branch}
set statusline+=%#DiffChange#
set statusline+=%r%m
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#DiffText#
set statusline+=\ %Y\ 
set statusline+=%#MatchParen#
set statusline+=\ %l:%c\ 
set statusline+=%#DiffChange#
set statusline+=\ %p%%\ 

" -KEYBINDINGS-

" Leader key mapping
nnoremap <SPACE> <Nop>
let mapleader=" "
" Comment block (insert commenting characters)
vnoremap <Leader>c :norm i
" Open file
nnoremap <Leader>o :find 
" Open buffer
nnoremap <Leader>p :b 
" Run command
nnoremap <Leader>r :!
" Save file
nnoremap <Leader>s :w<CR>
" Quit file
nnoremap <Leader>q :bdelete<CR>
" Open explorer
nnoremap <Leader>t :Vex<CR>

" Window managing
nnoremap <Leader>h :wincmd h<CR>
nnoremap <Leader>j :wincmd j<CR>
nnoremap <Leader>k :wincmd k<CR>
nnoremap <Leader>l :wincmd l<CR>
nnoremap <Leader>w :wincmd c<CR>
nnoremap <Leader><Tab> :wincmd w<CR>

" Automatically closing paired characters
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap (	()<Left>
inoremap ((	(
inoremap ()	()
inoremap [	[]<Left>
inoremap [[	[
inoremap []	[]
inoremap <	<><Left>
inoremap <<	<
inoremap <>	<>
inoremap "	""<Left>
inoremap ""	"
inoremap '	''<Left>
inoremap ''	'
