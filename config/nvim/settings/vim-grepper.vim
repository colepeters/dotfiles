" Settings for vim-grepper

" Set ,fi to Grepper w/ open/focused loclist
" (Mnemonic 'find in (files)')
nnoremap <leader>fi :Grepper -noquickfix -open -switch -tool git <CR>
