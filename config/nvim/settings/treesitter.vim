if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "comment",
    "css",
    "html",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "regex",
    "vim",
    "yaml",
  },
  autotag = {
    enable = true,
  }
}
EOF
