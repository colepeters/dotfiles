"  Settings for vim-grepper
"
"" Set ,fi to Grepper w/ open/focused loclist
"" (Mnemonic 'find in (files)')
"nnoremap <leader>fi :Grepper -noquickfix -open -switch -highlight -tool git <CR>
"
"" Set default options for git grep:
"let g:grepper = {
"      \ 'tools': ['git'],
"      \ 'git': {
"      \   'grepprg': 'git grep -lI',
"      \   'grepformat': '%f',
"      \   'escape': '\$.*%#[]',
"      \ }}
