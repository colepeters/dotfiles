require('nvim-tree').setup({
  view = {
    width = 42,
    side = 'right',
  },
  renderer = {
    icons = {
      glyphs = {
        git = {
          unstaged = '',
          staged = '',
          renamed = '',
          untracked = '',
          deleted = '',
          ignored = '',
        }
      }
    }
  }
})

