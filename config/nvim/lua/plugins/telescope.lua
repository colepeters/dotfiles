require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 'node_modules' }
  }
}

require('telescope').load_extension('fzf')

