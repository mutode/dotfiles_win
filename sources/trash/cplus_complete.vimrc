" cplus complete vimrc
" choose clang_complete or marching

"-------------------------
" clang_complete Setting 
"-------------------------
" let g:clang_auto_select=0
let g:clang_complete_auto=1
let g:clang_periodic_quickfix=1
let g:clang_complete_copen=1
if has("win32") || has('win64')
	let g:clang_exec=$VIM_CPP_CLANG
elseif has('mac')
	let g:clan_use_library=1
	let g:clang_library_path=$CPP_LIB
	let g:clang_user_options = '-std=c++11'
endif

"-------------------------
" marching Setting 
"-------------------------
" clang コマンドの設定
" let g:marching_clang_command = $VIM_CPP_CLANG 
" let g:marching_include_paths = [
" \   $VIM_CPP_STDLIB
" \]
" " オプションの追加、どのバージョンでするか
" let g:marching_clang_command_option='-std=c++14'
" " neocompleteを使う場合
" let g:marching_enable_neocomplete = 1
" " オムニ補完時に補完ワードを挿入したくない場合
" imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)
