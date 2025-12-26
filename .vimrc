syntax on
set number

" Добавить строку ниже и перейти на неё (без Insert mode)
nnoremap o :put =''<CR>
" Добавить строку выше и перейти на неё (без Insert mode)
nnoremap O :put! =''<CR>
