local systemcolors = vim.fn.system('defaults read -g AppleInterfaceStyle')
local fox

if systemcolors:find('Dark') then
  fox = 'duskfox'
else
  fox = 'dawnfox'
end

local palette = require('nightfox.palette').load(fox)

require('bufferline').setup({
  options = {
    indicator = {
      style = 'none'
    },
    separator_style = 'padded_slant',
  },
  highlights = {
    background = {
      fg = palette.fg0,
      bg = palette.bg4,
    },
    fill = {
      bg = palette.bg0,
    },
    separator = {
      fg = palette.bg0,
      bg = palette.bg4,
    },
    separator_selected = {
      fg = palette.bg0,
      bg = palette.bg1,
    },
    separator_visible = {
      fg = palette.bg0,
      bg = palette.bg1,
    },
    buffer_selected = {
      fg = palette.fg0,
      bg = palette.bg1,
      italic = false,
    },
    buffer_visible = {
      fg = palette.fg0,
      bg = palette.bg1,
    },
    close_button = {
      fg = palette.fg0,
      bg = palette.bg4,
    },
    close_button_selected = {
      fg = palette.fg0,
      bg = palette.bg1,
    },
    close_button_visible = {
      bg = palette.bg1,
      fg = palette.fg0,
    },
    modified = {
      bg = palette.bg4,
      fg = palette.fg0,
    },
    modified_selected = {
      bg = palette.bg1
    },
    duplicate = {
      fg = palette.fg1,
      bg = palette.bg4,
    },
    duplicate_visible = {
      fg = palette.magenta.bright,
    },
    duplicate_selected = {
      fg = palette.magenta.bright,
    },
  }
})
