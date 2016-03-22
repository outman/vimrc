""""""""""""""""""""""""""""""""
" source non forked
" 
" https://github.com/easymotion/vim-easymotion
" https://github.com/Valloric/YouCompleteMe
"
""""""""""""""""""""""""""""""""

set nu
set mouse=v
set tw=80
set tabstop=4

let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=26
let g:airline#extensions#tabline#enabled=1

let g:auto_striptrail="php"
let g:auto_striptab="php"

"let g:loaded_syntastic_php_phpcs_checker=1

""""""""""""""""""""""""""""""""""
" => PHP section 
""""""""""""""""""""""""""""""""""

au FileType php inoremap $t $t
au FileType php inoremap $e $e
au FileType php inoremap $q $q

au FileType php inoremap $5 ''<esc>i
au FileType php inoremap $6 ""<esc>i
au FileType php inoremap $7 <??><esc>1hi
au FileType php inoremap $8 <esc>la 

au FileType javascript call MyJavaScriptFold()
function! MyJavaScriptFold()
    setl nofoldenable
endfunction

au FileType php call PhpFdmSetting()
function! PhpFdmSetting() 
    set fdm=marker
endfunction

""""""""""""""""""""""""""""""""""
" => NERDTree confing
""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

""""""""""""""""""""""""""""""""
" => YCM
""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0
