" Use tabs for Go files
augroup GoFileType
    autocmd!
    autocmd FileType go setlocal noexpandtab
    autocmd FileType go let g:go_doc_popup_window = 0
    autocmd FileType go let g:go_highlight_functions = 0
    autocmd FileType go let g:go_highlight_function_calls = 1
    autocmd FileType go let g:go_highlight_types = 1
    autocmd FileType go let g:go_highlight_extra_types = 1
    autocmd FileType go nnoremap <Leader>b :GoBuild<CR>
augroup END
