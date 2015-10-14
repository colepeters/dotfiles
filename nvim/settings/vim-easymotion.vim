" Disable Easymotion default mappings
let g:EasyMotion_do_mapping = 0

" Easymotion defaults to <Leader><Leader> for invoking.
" Let’s not do that.
map <Leader> <Plug>(easymotion-prefix)

" Disable Easymotion’s case sensitivity
let g:EasyMotion_smartcase = 1

" Easymotion for a single character
" E.g. <Leader>s{char}{label}
" Mnemonic: search
map <Leader>s <Plug>(easymotion-s)

" Same as above, but with two keystrokes, like vim-sneak
" E.g. <Leader>t{char}{char}{label}
" Mnemonic: search double
nmap <Leader>sd <Plug>(easymotion-s2)
