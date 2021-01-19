" nnoremap <silent> <space>/ :Commentary<CR>
vnoremap <silent> <space>/ :Commentary<CR>
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
autocmd FileType javascript.js setlocal commentstring={/*\ %s\ */}
