-- Use which-key to define nested mappings
local status_ok, wk = pcall(require, 'which-key')
if not status_ok then
  return
end

-- For basic mappings
local function map(mode, shortcut, command, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, shortcut, command, options)
end

-- ----------------------------------------------------------------------------
-- Builtins
-- ----------------------------------------------------------------------------
map('n', '//', ':nohlsearch <CR>')               -- Clear current search with //
map('n', '0', '^')                               -- 0 goes to first char in line
map('n', '^', '0')                               -- ^ goes to start of line
map('n', 'Y', 'y$')                              -- Make Y behave like C and D

-- Stay in visual mode when indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Move text up and down in visual mode
map('v', 'J', ":m '>+1<CR>gv=gv")
map('v', 'K', ":m '<-2<CR>gv=gv")
map('x', 'J', ":m '>+1<CR>gv=gv")
map('x', 'K', ":m '<-2<CR>gv=gv")

-- Stop visual paste insanity:
-- If you visually select something and hit paste, that thing gets yanked into your buffer. This
-- generally is annoying when you're copying one item and repeatedly pasting it. This changes the paste
-- command in visual mode so that it doesn't overwrite whatever is in your paste buffer.
map('v', 'p', '"_dP')


-- Diagnostics
wk.add({
  { "<leader>d", group = "Diagnostics…" },
  { "<leader>dj", vim.diagnostic.goto_next, desc = "Next diagnostic" },
  { "<leader>dk", vim.diagnostic.goto_prev, desc = "Previous diagnostic" },
  { "<leader>dl", vim.diagnostic.open_float, desc = "Line diagnostics" },
})

-- ----------------------------------------------------------------------------
-- Plugins
-- ----------------------------------------------------------------------------

-- Bufferline & Bbye
map('n', 'tj', '<cmd>:BufferLineCycleNext<CR>')
map('n', 'tk', '<cmd>:BufferLineCyclePrev<CR>')
map('n', '<S-Q>', '<cmd>:Bdelete<CR>')

-- Nvim-Tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree'})

-- Telescope
wk.add({
  { "<leader>f", group = "Find…" },
  { "<leader>fb", "<cmd>Telescope buffers <CR>", desc = "Buffers" },
  { "<leader>ff", "<cmd>Telescope find_files <CR>", desc = "Files" },
  { "<leader>fg", "<cmd>Telescope git_files <CR>", desc = "Git files" },
  { "<leader>fi", "<cmd>Telescope live_grep <CR>", desc = "Find in files" },
})
wk.add({
  "<leader>dw", "<cmd>Telescope diagnostics<CR>", desc = "Workspace (Telescope)"
})

-- Trouble
wk.add({
  { "<leader>dd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Document (Trouble)" },
  { "<leader>da", "<cmd>Trouble diagnostics<CR>", desc = "All (Trouble)" },
})
map('n', 'gr', '<cmd>Trouble lsp toggle focus=false win.position=right <CR>', { desc = 'References (Trouble)' })

