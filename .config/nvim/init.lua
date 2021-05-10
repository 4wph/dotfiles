require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'jiangmiao/auto-pairs'
  use 'ciaranm/detectindent'
  use 'skywind3000/asyncrun.vim'

  use 'ctrlpvim/ctrlp.vim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'justinmk/vim-sneak'

  use 'guns/vim-sexp'
  use 'tpope/vim-sexp-mappings-for-regular-people'

  use 'nvim-treesitter/nvim-treesitter'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'

  use 'ChristianChiarulli/nvcode-color-schemes.vim'
end)

-- require('init-lsp')

vim.cmd('colorscheme snazzy')-- FIXME
vim.cmd('autocmd BufReadPost * :DetectIndent')-- FIXME

vim.g.ctrlp_user_command = { '.git', 'cd %s && git ls-files -co --exclude-standard' }
vim.g.completion_matching_strategy_list = { 'exact', 'substring', 'fuzzy' }

vim.o.cot = 'menuone,noinsert,noselect'
vim.o.termguicolors = true
vim.o.hlsearch = false

vim.g.netrw_liststyle = 3
vim.g.netrw_banner = 0
vim.g.netrw_browse_split = 4
vim.g.netrw_winsize = 15

vim.api.nvim_set_keymap('n', '<F8>', '<cmd>Vexplore<CR>', {noremap = true})

require'nvim-treesitter.configs'.setup {
  ensure_installed = 'all',
  highlight = {
    enable = true,
  }
  -- indent = {
  --   enable = true
  -- }
}
