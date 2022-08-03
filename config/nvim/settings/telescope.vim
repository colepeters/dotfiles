" Find Files
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Find Git (files)
nnoremap <leader>fg <cmd>Telescope git_files<cr>

" Find In (files)
nnoremap <leader>fi <cmd>Telescope live_grep<cr>

" Find Buffers
nnoremap <leader>fb <cmd>Telescope buffers<cr>

lua << EOF
require('telescope').setup {
  defaults = {
    file_ignore_patterns = {'node_modules'}
  }
}
require('telescope').load_extension('fzf')
EOF
