require('lualine').setup({
  sections = {
    lualine_x = {
      'encoding',
      {
        'fileformat',
        symbols = {
          unix = 'LF',
          dos = 'CRLF',
          mac = 'CR',
        },
      },
      'filetype',
    },
    lualine_y = { 'location' },
    lualine_z = { },
  },
  extensions = {
    'nvim-tree',
  },
})

