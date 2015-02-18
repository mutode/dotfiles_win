" path vimrc

" cplus用(Windows)
if has('win32') || has('win64')
	" $VIM_CPP_STDLIB
	let $VIM_CPP_STDLIB = "C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"
	" $VIM_CPP_CLANG
	let $VIM_CPP_CLANG = "C:/Program\ Files\ (x86)/LLVM/bin/clang.exe"
elseif has("win32") || has('win64')
	" $VIM_CPP_STDLIB
	let $VIM_CPP_STDLIB = "/usr/bin/g++"
endif



" 最後にローカル用の設定があった場合はそちらを読み込む
if filereadable( $COMMON_HOME . "/.vimrc_path_local" )
	source $COMMON_HOME/.vimrc_path_local
endif
