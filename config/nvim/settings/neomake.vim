" ---------- BEHAVIOUR/APPEARANCE ----------

" Open the loclist/quickfix list when entries are produced,
" and preserve cursor position
let g:neomake_open_list = 2

" Customise error and warning signs
let g:neomake_error_sign = {
      \ 'text': '✕',
      \ 'texthl': 'ErrorMsg',
      \ }

let g:neomake_warning_sign = {
      \ 'text': '!',
      \ 'texthl': 'ErrorMsg',
      \ }

" Run Neomake on :w
autocmd! BufWritePost * Neomake

" Disable HTML checkers
let g:neomake_html_enabled_makers = []

" ---------- JAVASCRIPT MAKERS ----------

" Default JS linting is with ESLint
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']

" ---------- PYTHON MAKERS ----------
let g:neomake_python_enabled_makers = ['flake8']

