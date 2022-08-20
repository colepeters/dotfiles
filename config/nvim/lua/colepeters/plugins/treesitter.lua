require('nvim-treesitter.configs').setup {
  autotag = {
    enable = true,
  },
  ensure_installed = {
    'bash',
    'comment',
    'css',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'json5',
    'lua',
    'regex',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
}

