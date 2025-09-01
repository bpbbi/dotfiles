set tabstop=4
set shiftwidth=4
set expandtab
set notimeout
set ttimeout
set list
set listchars=tab:>-,extends:>,precedes:<,space:·
set fillchars=eob:~,vert:│,stl:🮂,stlnc:🮂
set cursorline
set rnu
set nu
set showcmd

set ignorecase
set smartcase
set termguicolors 
" autocmd BufWinEnter <buffer> match Error /\s\+$/  

colorscheme gecs

" Enable tabline always
set showtabline=2

" Enable file type detection
filetype plugin on
" Linters
let g:syntastic_yaml_checkers = ['yamllint']
let g:sql_type_default = 'pgsql' " Plug pgsql.vim

" Dumb Netrw flag to move and copy
" https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/
let g:netrw_keepdir = 0

" Extends in HTML
augroup HtmlFileType
    autocmd!
    autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
augroup END

" External configs 
source ~/.config/nvim/thirdpartyideas.vim
source ~/.config/nvim/plugconf.vim
source ~/.config/nvim/gomod.vim
source ~/.config/nvim/keybindings.vim
source ~/.config/nvim/coc-config.vim
let g:coc_disable_startup_warning = 1
