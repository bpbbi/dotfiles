" Spaces insted of tabs
" You could use :retab
set tabstop=4       " Number of spaces that a <Tab> counts for
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set expandtab

" Use tabs for Go files
autocmd FileType go setlocal noexpandtab

" Show hiden symbols
"autocmd BufWinEnter <buffer> match Error /\s\+$/  
set list
nnoremap <F12> :set list!<CR>
set listchars=tab:>-,extends:>,precedes:<,space:·

" Dumb Netrw flag to move and copy
" https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
let g:netrw_keepdir = 0

" Line number on the left
set rnu
set nu

" Map leader key
map <Space> <Leader>
nnoremap <Leader>w   :Windows<CR>
nnoremap <Leader>b   :Buffers<CR>
nnoremap <Leader>f   :Files<CR>
nnoremap <Leader>t   :Tags<CR>
nnoremap <Leader>m   :Marks<CR>
nnoremap <Leader>M   :delmarks A-Z<CR> :delmarks 0-9<CR> :delm!<CR>


" Plug manager
call plug#begin()
Plug 'tpope/vim-sensible' " Like conventional shit or smth
"Plug 'https://github.com/nanotech/jellybeans.vim' " some broken colourscheme
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Color scheme
"ayu
set termguicolors " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
