" Leader key
map <Space> <Leader>

" Parentheses
vnoremap <Leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <Leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <Leader>1 <esc>`>a'<esc>`<i'<esc>
vnoremap <Leader>2 <esc>`>a"<esc>`<i"<esc>

" Copy to os clipboard
nnoremap <M-c> <S-v> "+y
vnoremap <M-c> "+y

" Netrw
nnoremap <Leader>e :Lexplore<CR>
let g:netrw_winsize = 10

" Editor conf
command! W w
"" Toggle state
nnoremap <Leader>0 :set list!<CR>
nnoremap <Leader>9 :GitGutterToggle<CR>
nnoremap <Leader>8 :call CocAction('diagnosticToggleBuffer')<CR>

" Windows
nnoremap <Leader>n :vnew<CR>
" Terminal open
"nnoremap <Leader>` :split <bar>:!export SHELL=/bin/bash <bar> terminal<CR>
let $SHELL="/bin/bash"
nnoremap <Leader>` :below split <bar> terminal <CR> :res 9 <CR> A
"" Exit terminal mode
tnoremap <ESC> <C-\><C-n>
"" Moving inside windows
noremap <C-h> ^
noremap <C-l> $
nnoremap <silent><C-j> :wincmd j<CR>
nnoremap <silent><C-k> :wincmd k<CR>
nnoremap <silent><C-S-j> :wincmd J<CR>
nnoremap <silent><C-S-k> :wincmd K<CR>

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
inoremap <expr> <c-s> fzf#vim#complete#word({'window': { 'width': 0.2, 'height': 0.9, 'xoffset': 0.3 }})

" GoMapping
autocmd FileType go nnoremap <buffer> <leader><F2> :GoRename<CR>

" UltiSnip mappings
let g:UltiSnipsExpandTrigger="<c-x><c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-x><c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-x><c-p>"

" Autoformat
nnoremap gb :Autoformat<CR>

