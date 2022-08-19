-- Borrowed from https://github.com/brainfucksec/neovim-lua/blob/main/nvim/lua/core/keymaps.lua
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '//', ':nohlsearch <CR>')               -- Clear current search with //
map('n', '0', '^')                               -- 0 goes to first char in line
map('n', '^', '0')                               -- ^ goes to start of line
map('n', 'Y', 'y$')                              -- Make Y behave like C and D

-- Splits
map('n', 'vv', '<C-w>v')                         -- Vertical split
map('n', 'vh', '<C-w>s')                         -- Horizontal split

-- Navigate splits with CTRL-hjkl
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-H>', '<C-W><C-H>')
map('n', '<C-L>', '<C-W><C-L>')

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

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files <CR>')   -- Find Files
map('n', '<leader>fg', '<cmd>Telescope git_files <CR>')    -- Find Git files
map('n', '<leader>fi', '<cmd>Telescope live_grep <CR>')    -- Find In (files)
map('n', '<leader>fb', '<cmd>Telescope buffers <CR>')      -- Find Buffers

