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
" let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#708090'
" let g:indentLine_char = '|'


"---------------------------------------
" vimfiler
"---------------------------------------
" autocmd! FileType vimfiler call g:my_vimfiler_settings()
" function! g:my_vimfiler_settings()
"   nmap     <buffer><expr><Cr> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
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


"---------------------------------------
" lightline setting
"---------------------------------------
" lightlineの設定
" lightlineをデフォルト設定にしておかないとおかしくなる
" let g:lightline = {
"         \ 'colorscheme': 'wombat',
"         \ 'mode_map': {'c': 'NORMAL'},
"         \ 'active': {
"         \   'left': [
"         \     ['mode', 'paste'],
"         \     ['fugitive', 'gitgutter', 'filename'],
"         \   ],
"         \   'right': [
"         \     ['lineinfo', 'syntastic'],
"         \     ['percent'],
"         \     ['charcode', 'fileformat', 'fileencoding', 'filetype'],
"         \   ]
"         \ },
"         \ 'component_function': {
"         \   'modified': 'MyModified',
"         \   'readonly': 'MyReadonly',
"         \   'fugitive': 'MyFugitive',
"         \   'filename': 'MyFilename',
"         \   'fileformat': 'MyFileformat',
"         \   'filetype': 'MyFiletype',
"         \   'fileencoding': 'MyFileencoding',
"         \   'mode': 'MyMode',
"         \   'syntastic': 'SyntasticStatuslineFlag',
"         \   'charcode': 'MyCharCode',
"         \   'gitgutter': 'MyGitGutter',
"         \ },
" 	\ }



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
au BufNewFile,BufRead *.cs set tags+=$COMMON_HOME/cs.tags
" if has('path_extra')
" 	set tags:=tags;
" endif


"-------------------------------------------
" vim-tagsの設定 
"-------------------------------------------
au BufNewFile,BufRead *.cs let g:vim_tags_project_tags_command = "ctags -f C:\User\shoei.asama\cs.tags 'pwd' 2>/dev/null &"


"-------------------------------------------
" evervim
"-------------------------------------------
let g:evervim_devtoken='S=s213:U=15a04b4:E=152c4b91e13:C=14b6d07f120:P=1cd:A=en-devtoken:V=2:H=d2baa5d6ce45cd3fb8f474ea06bb824d'
nnoremap <silent> ,el :<C-u>EvervimNotebookList<CR>
nnoremap <silent> ,eT :<C-u>EvervimListTags<CR>
nnoremap <silent> ,en :<C-u>EvervimCreateNote<CR>
nnoremap <silent> ,eb :<C-u>EvervimOpenBrowser<CR>
nnoremap <silent> ,ec :<C-u>EvervimOpenClient<CR>
nnoremap ,es :<C-u>EvervimSearchByQuery<SPACE>
nnoremap <silent> ,et :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done -tag:someday<CR>
nnoremap <silent> ,eta :<C-u>EvervimSearchByQuery<SPACE>tag:todo -tag:done<CR>
