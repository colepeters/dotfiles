-------------------------------------------------------------------------------
--
-- Core settings file
--
-------------------------------------------------------------------------------

local g = vim.g
local opt = vim.opt

-------------------------------------------------------------------------------
-- General
-------------------------------------------------------------------------------
g.mapleader = ' '              -- Leader is space
opt.backup = false             -- Don't use backup files
opt.clipboard = 'unnamedplus'  -- Use system clipboard
opt.swapfile = false           -- Don't use swapfiles
opt.autoread = true            -- Auto read files when changed on disk
opt.encoding = 'utf-8'         -- Use UTF-8 encoding by default
opt.hidden = true              -- Keep buffers loaded when abandoned
opt.laststatus = 3             -- Always show the status line
opt.visualbell = true          -- Use visual bell instead of beeping

-------------------------------------------------------------------------------
-- Indentation
-------------------------------------------------------------------------------
opt.expandtab = true           -- Use spaces instead of tabs
opt.shiftwidth = 2             -- Indent 2 spaces
opt.smartindent = true         -- Audo indent new lines
opt.smarttab = true            -- <Tab> inserts spaces according to shiftwidth
opt.backspace = {
  'indent', 'eol', 'start'     -- Backspace over these in one go
}

-------------------------------------------------------------------------------
-- UI
-------------------------------------------------------------------------------
opt.number = true              -- Show line numbers
opt.showmatch = true           -- Highlight matching parens/brackets
opt.colorcolumn = '120'        -- Line length markers at 120 characters
opt.splitright = true          -- Vertical splits open on right
opt.splitbelow = true          -- Horizontal splits open on bottom
opt.ignorecase = true          -- Ignore casing on search
opt.termguicolors = true       -- Enable 24 bit colour
opt.cursorline = true          -- Highlight the current line
opt.hlsearch = true            -- Highlight search results
opt.incsearch = true           -- Preview the first search map as you type
opt.wrap = true                -- ----------------------------------------
opt.list = false              -- Word wrap without linebreaks
opt.linebreak = true           -- ----------------------------------------
opt.scrolloff = 8              -- Start scrolling 8 lines from edge
opt.history = 1000             -- Remember N lines in history
opt.undolevels = 1000          -- Remember N undos
opt.undoreload = 1000          -- Remember N lines on buffer reload
opt.signcolumn = 'yes'         -- Always show the sign column

