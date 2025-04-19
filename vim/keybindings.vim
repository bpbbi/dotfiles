" Leader key
map <Space> <Leader>

" Parentheses 
vnoremap <Leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <Leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <Leader>1 <esc>`>a'<esc>`<i'<esc>
vnoremap <Leader>2 <esc>`>a"<esc>`<i"<esc>

" Netrw
nnoremap <Leader>e :Lexplore<CR>

" Editor conf
nnoremap <Leader>j J
" Windows
nnoremap <Leader>n :vnew<CR>
"" Moving between windows
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-H> <C-W>h
nnoremap <S-L> <C-W>l
nnoremap <C-S-h> <C-W>H
nnoremap <C-S-j> <C-W>J
nnoremap <C-S-k> <C-W>K
nnoremap <C-S-l> <C-W>L
"" Moving inside windows
noremap <C-h> ^
noremap <C-l> $

" Tabs
nnoremap <Leader><S-n> :tabnew<CR>
"" You can keep in focus limited amount of things.
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
"" Move window to the new tab
nnoremap <Leader>t <C-W>T

" Goyo - zenMode
nnoremap <Leader>z :Goyo<CR>

" FZF mappings
nnoremap <Leader>f     :Files<CR>
nnoremap <Leader><C-F> :Rg<CR>
inoremap <C-f> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 1 }})

