" Plug manager
call plug#begin()
  " Like conventional shit or smth
  Plug 'tpope/vim-sensible' 
  " Colour scheme
  Plug 'ayu-theme/ayu-vim'
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " Low distraction mode
  Plug 'junegunn/goyo.vim'
  Plug 'https://github.com/amix/vim-zenroom2'
  " Git plugins
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
call plug#end()

" Color scheme
set termguicolors " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

