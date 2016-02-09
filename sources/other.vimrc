" other vimrc


"-------------------------------------------
" カラースキーマの設定 
" neobundleを使っているのでotherに入れる
"-------------------------------------------
set t_Co=256
syntax on
colorscheme hybrid 


"-------------------------
" indentLine Setting 
"-------------------------
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#708090'
let g:indentLine_char = '|'
"set list listchars=tab:\|-

"---------------------------------------
" vimfiler
"---------------------------------------
" autocmd! FileType vimfiler call g:my_vimfiler_settings()
" function! g:my_vimfiler_settings()
"   nmap     <buffer><expr><Cr> vimfiler#smart_cursor_map("¥<Plug>(vimfiler_expand_tree)", "¥<Plug>(vimfiler_edit_file)")
"   nnoremap <buffer>s :call vimfiler#mappings#do_action('my_split')<Cr>
"   nnoremap <buffer>v :call vimfiler#mappings#do_action('my_vsplit')<Cr>
" endfunction
"
" let s:my_action = { 'is_selectable' : 1 }
" function! s:my_action.func(candidates)
"   wincmd p
"   exec 'split '. a:candidates[0].action__path
" endfunction
" call unite#custom_action('file', 'my_split', s:my_action)
"
" let s:my_action = { 'is_selectable' : 1 }                     
" function! s:my_action.func(candidates)
"   wincmd p
"   exec 'vsplit '. a:candidates[0].action__path
" endfunction
" call unite#custom_action('file', 'my_vsplit', s:my_action)


"-------------------------------------------
"PreVim
"-------------------------------------------
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END



"-------------------------------------------
" ctagsの設定 
"-------------------------------------------
" 拡張子で読み込み設定を変える
" au BufNewFile,BufRead *.cs set tags+=$COMMON_HOME/cs.tags
set tags=./tags,tags;

"-------------------------------------------
" vim-tagsの設定 
"-------------------------------------------
au BufNewFile,BufRead *.cs let g:vim_tags_project_tags_command = "ctags -f C:¥User¥shoei.asama¥cs.tags 'pwd' 2>/dev/null &"


"-------------------------------------------
" evervim
"-------------------------------------------
let g:evervim_devtoken='S=s213:U=15a04b4:E=152c4b91e13:C=14b6d07f120:P=1cd:A=en-devtoken:V=2:H=d2baa5d6ce45cd3fb8f474ea06bb824d'


"-------------------------------------------
" quickrun
"-------------------------------------------
let g:quickrun_config={'*': {'split': ''}}
let g:quickrun_config._={ 'runner':'vimproc',
\       "runner/vimproc/updatetime" : 10,
\       "outputter/buffer/close_on_empty" : 1,
\ }
