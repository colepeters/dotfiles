require('nightfox').setup({
  options = {
    transparent = true,
    modules = {
      telescope = true,
      treesitter = true,
    }
  }
})

vim.cmd('colorscheme dayfox')
