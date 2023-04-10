local palette = require('nightfox.palette').load('dayfox')

require('bufferline').setup({
  options = {
    indicator = {
      style = 'none'
    },
    separator_style = 'padded_slant',
  },
  -- highlights for Dayfox
  highlights = {
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
    background = {
      fg = palette.fg0,
      bg = palette.bg4,
    },
    buffer_selected = {
      italic = false,
    },
    buffer_visible = {
      fg = palette.fg0,
      bg = palette.bg1,
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
    close_button = {
      fg = palette.fg0,
      bg = palette.bg4,
    },
    close_button_visible = {
      fg = palette.fg0,
    },
    modified = {
      bg = palette.bg4,
      fg = palette.fg0,
    },
  }
})
