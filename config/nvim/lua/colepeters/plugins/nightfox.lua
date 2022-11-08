require('nightfox').setup({
  options = {
    transparent = false,
    modules = {
      cmp = true,
      gitsigns = true,
      lsp_trouble = true,
      native_lsp = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
    },
  },
  groups = {
    dayfox = {
      LineNr = { fg = 'bg4'},
    },
  },
})

vim.cmd('colorscheme dayfox')

