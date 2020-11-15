if !exists('g:vscode')
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
	Plug 'ciaranm/detectindent'
	Plug 'dracula/vim', {'as':'dracula'}

	call plug#end()

	map <Leader> <Plug>(easymotion-prefix)

	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

	colorscheme dracula
else
	call plug#begin(stdpath('data') . '/plugged')

	Plug 'guns/vim-sexp'
	Plug 'tpope/vim-sexp-mappings-for-regular-people'
	Plug 'tpope/vim-surround'

	call plug#end()

	xmap gc  <Plug>VSCodeCommentary
	nmap gc  <Plug>VSCodeCommentary
	omap gc  <Plug>VSCodeCommentary
	nmap gcc <Plug>VSCodeCommentaryLine

	nnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
	xnoremap <silent> <C-j> :call VSCodeNotify('workbench.action.navigateDown')<CR>
	nnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
	xnoremap <silent> <C-k> :call VSCodeNotify('workbench.action.navigateUp')<CR>
	nnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
	xnoremap <silent> <C-h> :call VSCodeNotify('workbench.action.navigateLeft')<CR>
	nnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
	xnoremap <silent> <C-l> :call VSCodeNotify('workbench.action.navigateRight')<CR>
endif
