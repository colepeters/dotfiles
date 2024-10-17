return {
  -- Used by many
  'nvim-lua/plenary.nvim',

  -- LSP etc
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig',
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  'neovim/nvim-lspconfig',
  'jose-elias-alvarez/null-ls.nvim',
  'folke/trouble.nvim',

  -- Telescope (fuzzy finding)
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x' },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

  -- Treesitter (syntax parsing/highlighting)
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', version = '*' },
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Colours
  { 'EdenEast/nightfox.nvim', branch = 'main' },

  -- Completion
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'saadparwaiz1/cmp_luasnip',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',

   -- Manipulation
  'numToStr/Comment.nvim',
  'tpope/vim-surround',
  'gbprod/cutlass.nvim',

   -- UI
  { 'akinsho/bufferline.nvim', version = '*' },
  { 'akinsho/toggleterm.nvim', version = '*' },
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
  'lewis6991/gitsigns.nvim',
  { 'lukas-reineke/indent-blankline.nvim', version = "v2.*" },
  'moll/vim-bbye',
  'nvim-lua/popup.nvim',
  'nvim-lualine/lualine.nvim',
  'folke/which-key.nvim',
  'echasnovski/mini.icons',

   -- Additional filetypes
  'architect/vim-plugin',
}
