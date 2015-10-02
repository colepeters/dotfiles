" Open the loclist/quickfix list when entries are produced,
" and preserve cursor position
let g:neomake_open_list = 2

" Customise error and warning signs
let g:neomake_error_sign = {
      \ 'text': 'E>',
      \ 'texthl': 'ErrorMsg',
      \ }

let g:neomake_warning_sign = {
      \ 'text': 'W>',
      \ 'texthl': 'ErrorMsg',
      \ }

" Use StandardJS if .eslintrc not found in project directory;
" otherwise, use ESLint
if findfile('.eslintrc', '.;') ==# ''
  let g:neomake_javascript_enabled_makers = ['standard']
else
  let g:neomake_javascript_enabled_makers = ['eslint']
endif

" Run Neomake on :w
autocmd! BufWritePost * Neomake
