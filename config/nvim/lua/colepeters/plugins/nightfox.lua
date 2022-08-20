require('nightfox').setup({
  options = {
    transparent = true,
    modules = {
      cmp = true,
      telescope = true,
      treesitter = true,
    },
  },
  groups = {
    dayfox = {
      ColorColumn = { bg = 'bg0' },
      LineNr = { fg = 'bg4'},
    },
  },
})

vim.cmd('colorscheme dayfox')

