-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
  vim.o.runtimepath = vim.fn.stdpath('data') .. '/site/pack/*/start/*,' .. vim.o.runtimepath
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Use a floating window for Packer
packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
  },
})

return packer.startup(function(use)
  -- Allow packer to manage itself
  use 'wbthomason/packer.nvim'

  -- Multi-plugin dependency
  use 'nvim-lua/plenary.nvim'

  -- LSP etc
  -- Order of these plugins is important
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'folke/trouble.nvim'

  -- Telescope (fuzzy finding)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- Treesitter (syntax parsing/highlighting)
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Colours
  use { 'EdenEast/nightfox.nvim', branch = 'main' }

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Manipulation
  use 'numToStr/Comment.nvim'
  use 'tpope/vim-surround'

  -- UI
  use { 'akinsho/bufferline.nvim', tag = 'v2.*' }
  use { 'akinsho/toggleterm.nvim', tag = 'v2.*' }
  use 'folke/which-key.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'kyazdani42/nvim-tree.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'moll/vim-bbye'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lualine/lualine.nvim'

  -- Additional filetype (non TS)
   use 'architect/vim-plugin'

  -- Automatically set up configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)

