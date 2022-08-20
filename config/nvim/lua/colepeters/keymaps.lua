local function map(mode, shortcut, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, shortcut, command, options)
end

-- ----------------------------------------------------------------------------
-- General
-- ----------------------------------------------------------------------------
map('n', '//', ':nohlsearch <CR>')               -- Clear current search with //
map('n', '0', '^')                               -- 0 goes to first char in line
map('n', '^', '0')                               -- ^ goes to start of line
map('n', 'Y', 'y$')                              -- Make Y behave like C and D

-- Stay in visual mode when indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move text up and down
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('x', 'J', ":m '>+1<CR>gv=gv")
map('x', 'K', ":m '<-2<CR>gv=gv")

-- Splits
map('n', 'sv', '<C-w>v')                         -- Vertical split
map('n', 'sh', '<C-w>s')                         -- Horizontal split
map('n', '<C-j>', '<C-W>j')                      -- Navigate splits with CTRL-h/j/k/l
map('n', '<C-k>', '<C-W>k')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')

-- Tabs
map('n', 'th', ':tabfirst <CR>')
map('n', 'tj', ':tabnext <CR>')
map('n', 'tk', ':tabprev <CR>')
map('n', 'tl', ':tablast <CR>')
map('n', 'tn', ':tabnew <CR>')

-- Stop visual paste insanity:
-- If you visually select something and hit paste, that thing gets yanked into your buffer. This
-- generally is annoying when you're copying one item and repeatedly pasting it. This changes the paste
-- command in visual mode so that it doesn't overwrite whatever is in your paste buffer.
map('v', 'p', '"_dP')

-- ----------------------------------------------------------------------------
-- Plugins
-- ----------------------------------------------------------------------------

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files <CR>')   -- Find Files
map('n', '<leader>fg', '<cmd>Telescope git_files <CR>')    -- Find Git files
map('n', '<leader>fi', '<cmd>Telescope live_grep <CR>')    -- Find In (files)
map('n', '<leader>fb', '<cmd>Telescope buffers <CR>')      -- Find Buffers
