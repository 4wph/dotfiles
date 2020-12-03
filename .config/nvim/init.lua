require('packer').startup(function()
	use 'jiangmiao/auto-pairs'
	use 'justinmk/vim-sneak'
	use 'guns/vim-sexp'
	use 'tpope/vim-sexp-mappings-for-regular-people'
	use 'tpope/vim-repeat'
	use 'tpope/vim-surround'
	use 'tpope/vim-commentary'
	use 'ctrlpvim/ctrlp.vim'

	use 'nvim-treesitter/nvim-treesitter'
	use 'ChristianChiarulli/nvcode-color-schemes.vim'

	use 'neovim/nvim-lspconfig'
	use 'nvim-lua/completion-nvim'

	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	use 'SirVer/ultisnips'
	use 'honza/vim-snippets'
end)

vim.cmd('colorscheme snazzy')-- FIXME
vim.cmd('autocmd BufEnter * lua require\'completion\'.on_attach()')-- FIXME
vim.cmd('command! Format execute \'lua vim.lsp.buf.formatting()\'')

vim.g.UltiSnipsJumpForwardTrigger = "<C-f>"
vim.g.UltiSnipsJumpBackwardTrigger = "<C-b>"
vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
vim.g.completion_enable_snippet = 'UltiSnips'
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

vim.o.cot = "menuone,noinsert,noselect"
vim.o.termguicolors = true

local lspconfig = require'lspconfig'
local configs = require('lspconfig/configs')
if not lspconfig.clojure_lsp then
	configs.clojure_lsp = {
		default_config = {
			cmd = {'clojure-lsp'};
			filetypes = {'clojure'};
			root_dir = function(fname)
				return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
			end;
			settings = {};
		};
	}
end
local servers = {'jsonls', 'tsserver', 'html', 'clojure_lsp', 'angularls', 'cssls'}
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup{}
end
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  }
}

vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>xr', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>xd', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', {})
