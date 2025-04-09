" Map leader key
map <Space> <Leader>

" Parentheses 
vnoremap <Leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <Leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <Leader>1 <esc>`>a'<esc>`<i'<esc>
vnoremap <Leader>2 <esc>`>a"<esc>`<i"<esc>
vnoremap <Leader>> <esc>`>a\><esc>`<i\<<esc>

" Map Netrw
nnoremap <Leader>e :Lexplore<CR>

" Mowing between windows
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-H> <C-W>h
nnoremap <S-L> <C-W>l

nnoremap <C-S-h> <C-W>H
nnoremap <C-S-j> <C-W>J
nnoremap <C-S-k> <C-W>K
nnoremap <C-S-l> <C-W>L

" Tabs
nnoremap <Leader>n :tabnew<CR>
"" You can keep in focus limited amount of things.
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
"" Move window to the new tab
nnoremap <Leader>t <C-W>T

" FZF mappings
nnoremap <Leader>w     :Windows<CR>
nnoremap <Leader>b     :Buffers<CR>
nnoremap <Leader>f     :Files<CR>
nnoremap <Leader><C-F> :Rg<CR>
nnoremap <Leader>T     :Tags<CR>
nnoremap <Leader>m     :Marks<CR>
nnoremap <Leader>M     :delmarks A-Z :delmarks 0-9 :delm!<CR>

" Goyo - zenMode
nnoremap <Leader>z :Goyo<CR>

