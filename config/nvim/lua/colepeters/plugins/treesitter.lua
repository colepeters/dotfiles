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
    'tsx',
    'typescript',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = {},
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

