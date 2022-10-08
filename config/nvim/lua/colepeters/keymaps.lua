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

-- Leader groups
local diagnostics = '<leader>d'
local find = '<leader>f'

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
wk.register({
  [diagnostics] = {
    name = 'Diagnostics…',
    l = {vim.diagnostic.open_float, 'Line diagnostics'},
    j = {vim.diagnostic.goto_next, 'Next diagnostic'},
    k = {vim.diagnostic.goto_prev, 'Previous diagnostic'},
  }
})

-- ----------------------------------------------------------------------------
-- Plugins
-- ----------------------------------------------------------------------------

-- Bufferline & Bbye
map('n', '<S-L>', '<cmd>:BufferLineCycleNext<CR>')
map('n', '<S-H>', '<cmd>:BufferLineCyclePrev<CR>')
map('n', '<S-Q>', '<cmd>:Bdelete<CR>')

-- Nvim-Tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree'})

-- Telescope
wk.register({
  [find] = {
    name = 'Find…',
    f = {'<cmd>Telescope find_files <CR>', 'Files'},
    g = {'<cmd>Telescope git_files <CR>', 'Git files'},
    i = {'<cmd>Telescope live_grep <CR>', 'Find in files'},
    b = {'<cmd>Telescope buffers <CR>', 'Buffers'},
  }
})
wk.register({
  [diagnostics] = {
    w = {'<cmd>Telescope diagnostics<CR>', 'Workspace (Telescope)'},
  }
})

-- Trouble
wk.register({
  [diagnostics] = {
    d = {'<cmd>TroubleToggle document_diagnostics <CR>', 'Document (Trouble)'},
  }
})
map('n', 'gr', '<cmd>TroubleToggle lsp_references <CR>', { desc = 'References (Trouble)' })

