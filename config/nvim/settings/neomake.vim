" ---------- BEHAVIOUR/APPEARANCE ----------

" Open the loclist/quickfix list when entries are produced,
" and preserve cursor position
let g:neomake_open_list = 2

" Customise error and warning signs
let g:neomake_error_sign = {
      \ 'text': 'E',
      \ 'texthl': 'ErrorMsg',
      \ }

let g:neomake_warning_sign = {
      \ 'text': 'W',
      \ 'texthl': 'ErrorMsg',
      \ }

" Run Neomake on :w
autocmd! BufWritePost * Neomake

" ---------- JAVASCRIPT MAKERS ----------

" Default JS linting is with ESLint
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
" load local eslint in the project root
" modified from https://github.com/mtscout6/syntastic-local-eslint.vim
" NB: This means, for your eslintrc to work properly, Neovim must be opened
" from the project’s root directory
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" If an .eslintc file is NOT found in the current file's directory, or
" the directories above it, switch to linting JS files w/ Standard
" if findfile('.eslintrc', '.;') ==# ''
"   let g:neomake_javascript_enabled_makers = ['standard']
" endif


" ---------- PYTHON MAKERS ----------
let g:neomake_python_enabled_makers = ['flake8']

