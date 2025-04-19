call plug#begin()
  " Like conventional shit or smth
  Plug 'tpope/vim-sensible' 
  " FZF
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  " Low distraction mode
  Plug 'junegunn/goyo.vim'
  Plug 'amix/vim-zenroom2'
  " Git plugins
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  " Lang plugins
  Plug 'lifepillar/pgsql.vim'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  " Autocomplete
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Colors
  Plug 'chrisbra/Colorizer'
call plug#end()

