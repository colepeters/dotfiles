let g:coc_global_extensions = [
      \'coc-browser',
      \'coc-css',
      \'coc-eslint',
      \'coc-html',
      \'coc-json',
      \'coc-prettier',
      \'coc-svg',
      \'coc-tsserver',
      \]

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
