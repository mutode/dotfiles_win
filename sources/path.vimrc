" path vimrc

" 最後にローカル用の設定があった場合はそちらを読み込む
if filereadable(expand('$HOME/.vimrc_path_local'))
	source $HOME/.vimrc_path_local
endif
