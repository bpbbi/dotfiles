" Plug manager
call plug#begin()
  Plug 'tpope/vim-sensible' " Like conventional shit or smth
  Plug 'https://github.com/ayu-theme/ayu-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" Color scheme
set termguicolors " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Map leader key
map <Space> <Leader>
nnoremap <Leader>w   :Windows<CR>
nnoremap <Leader>b   :Buffers<CR>
nnoremap <Leader>f   :Files<CR>
nnoremap <Leader>t   :Tags<CR>
nnoremap <Leader>m   :Marks<CR>
nnoremap <Leader>M   :delmarks A-Z<CR> :delmarks 0-9<CR> :delm!<CR>

