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

set path +=**
set wildmenu
set wildmode=longest:full,full

set tabstop=4
set softtabstop=0
set noexpandtab
set shiftwidth=4

" -TERMINAL-

if has('termguicolors')
	set termguicolors
endif

if &term == "alacritty"
	let &term = "xterm-256color"
endif

" -STATUSLINE-

set statusline=
set statusline+=%#ToolbarButton#
set statusline+=\ %f
set statusline+=%m\ 
set statusline+=%#LineNr#
set statusline+=%=
set statusline+=%#ToolbarButton#
set statusline+=\ %y\ \|
set statusline+=\ %{strftime(\"%a\ %b\ %d\ \|%l:%M\ %p\")}\ 

" -KEYBINDINGS-

" Leader key mapping
nnoremap <SPACE> <Nop>
let mapleader=" "
" Comment block (insert commenting characters)
vnoremap <Leader>c :norm i
" Window managing
nnoremap <Leader>w <C-w>
" Open file
nnoremap <Leader>o :find 
" Open buffer
nnoremap <Leader>p :b 
" Open terminal
nnoremap <Leader>t :bo term<CR>
" Run command
nnoremap <Leader>r :!
" Save file
nnoremap <Leader>s :w<CR>
" Quit file
nnoremap <Leader>q :q<CR>

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
