require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'jiangmiao/auto-pairs'
	use 'justinmk/vim-sneak'
	use 'guns/vim-sexp'
	use 'tpope/vim-sexp-mappings-for-regular-people'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'ctrlpvim/ctrlp.vim'

	use 'nvim-treesitter/nvim-treesitter'

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'

	use 'ChristianChiarulli/nvcode-color-schemes.vim'
end)

vim.cmd('colorscheme nord')-- FIXME
vim.cmd('autocmd BufEnter * lua require\'completion\'.on_attach()')-- FIXME

vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

vim.o.cot = 'menuone,noinsert,noselect'
vim.o.termguicolors = true

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 15

vim.cmd('command! Format execute \'lua vim.lsp.buf.formatting()\'')-- FIXME
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>xr', '<cmd>lua vim.lsp.buf.rename()<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<Leader>xd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {noremap = true})
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {noremap = true, expr = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', {noremap = true, expr = true})

vim.api.nvim_set_keymap('n', '<F8>', '<cmd>Vexplore<CR>', {noremap = true})

local lspconfig = require'lspconfig'
local configs = require('lspconfig/configs')
local servers = {'jsonls', 'tsserver', 'html', 'clojure_lsp', 'angularls', 'cssls', 'texlab'}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup{}
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'all',
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}
