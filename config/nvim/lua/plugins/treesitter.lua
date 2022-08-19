require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
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
  autotag = {
    enable = true,
  },
}

