" cplus common setting

let $VIM_CPP_STDLIB = "C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"

augroup vimrc-set_filetype_cpp
	autocmd!
    " $CPP_STDLIB よりも下の階層のファイルが開かれて
    " filetype が設定されていない場合に filetype=cpp を設定する
	autocmd BufReadPost $VIM_CPP_STDLIB/* if empty(&filetype) | set filetype=cpp | endif
augroup END
" augroup vimrc-cpp
" 	autocmd FileType cpp call s:cpp()
" 	autocmd!
" augroup END


" filetype=cpp が設定された時に呼ばれる関数 
" function! s:cpp()
" 	" インクルードディレクトリのパスを設定
" 	" ここはpathを見て変える
" 	setlocal path+=$VIM_CPP_STDLIB
"
" 	" タブ文字の長さ
" 	setlocal tabstop=4
" 	setlocal shiftwidth=4
"
" 	" 空白文字を使用
" 	setlocal expandtab
"
" 	" quickrun.vim の設定
" " 	let b:quickrun_config = {
" " \		"hook/add_include_option/enable" : 1
" " \	}
" endfunction
