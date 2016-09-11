" ---------- BEHAVIOUR/APPEARANCE ----------

" Open the loclist/quickfix list when entries are produced,
" and preserve cursor position
let g:neomake_open_list = 2

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
let b:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" ---------- PYTHON MAKERS ----------
let g:neomake_python_enabled_makers = ['flake8']

