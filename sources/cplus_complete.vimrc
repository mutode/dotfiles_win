" cplus complete vimrc
" choose clang_complete or marching

"-------------------------
" clang_complete Setting 
"-------------------------
" let g:clang_auto_select=0
" let g:clang_complete_auto=1
" let g:clang_periodic_quickfix=0
" let g:clang_complete_copen=0
" let g:clang_use_library=0
" let g:clang_exec="C:/Program\ Files\ (x86)/LLVM/bin/clang.exe"
"let g:clang_user_options='-I D:/boost_1_45_0 -fms-extensions -fmsc-version=1300 -fgnu-runtime -D__MSVCRT_VERSION__=0x700 -D_WIN32_WINNT=0x0500 2> NUL || exit 0"' 
"-------------------------
" marching Setting 
"-------------------------
" clang コマンドの設定
let g:marching_clang_command = "C:/Program\ Files\ (x86)/LLVM/bin/clang.exe"
"
let g:marching_include_paths = [
\   $VIM_CPP_STDLIB
\]
" オプションの追加、どのバージョンでするか
let g:marching_clang_command_option='-std=c++14'
" neocompleteを使う場合
let g:marching_enable_neocomplete = 1
" " オムニ補完時に補完ワードを挿入したくない場合
" imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)
