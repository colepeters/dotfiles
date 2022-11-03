require('lualine').setup({
  sections = {
    lualine_c = {
      {
        'filename',
        path = 3, -- absolute path with ~ for $HOME
      }
    },
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

