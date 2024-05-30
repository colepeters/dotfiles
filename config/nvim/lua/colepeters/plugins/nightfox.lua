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
    dawnfox = {
      LineNr = { fg = 'bg4'},
    },
  },
})

local systemcolors = vim.fn.system('defaults read -g AppleInterfaceStyle')

if systemcolors:find('Dark') then
  vim.cmd('colorscheme duskfox')
else
  vim.cmd('colorscheme dawnfox')
end

