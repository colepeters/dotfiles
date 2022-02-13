" Find Files
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Find In (files)
nnoremap <leader>fi <cmd>Telescope live_grep<cr>

" Find Buffers
nnoremap <leader>fb <cmd>Telescope buffers<cr>

lua << EOF
require('telescope').load_extension('fzf')
EOF
