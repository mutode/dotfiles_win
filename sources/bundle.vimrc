
" neobundle設定
" neobundle path設定
if has('vim_starting')
	set nocompatible
	" runtimepathの追加(必須)
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期設定
call neobundle#begin(expand('$HOME/.vim/bundle/'))
"let g:neobundle_default_git_protocol='https'

" neobundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグイン
NeoBundle 'Shougo/unite.vim'

" 補完
NeoBundle 'Shougo/neocomplete.vim'

" 非同期のためのvimproc
" nmakeを使ってvisualstudio の 
" native tools command lineからビルドしたほうがいい
NeoBundle 'Shougo/vimproc.vim', {
	\ 'build' :{
		\	'windows' : 'tools\\update-dll-mingw',
		\	},
	\}

" vimfiler
NeoBundle 'Shougo/vimfiler.vim'

"コメント挿入　C + --	
NeoBundle 'tomtom/tcomment_vim'

" ctagsを設定
NeoBundle 'szw/vim-tags'

"コンパイラ :QuickRun
NeoBundle 'thinca/vim-quickrun'

"インデントの深さを表示
NeoBundle 'Yggdroot/indentLine'

"powerlineの代わりにlightline
NeoBundle 'itchyny/lightline.vim'

" for MarkDown
NeoBundle 'kannokanno/previm'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tyru/open-browser.vim'

" evervim for Evernote
NeoBundle 'kakkyz81/evervim'

" カラーテーマ
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'

"キーマッピング
NeoBundle 'kana/vim-submode'

" Check install
NeoBundleCheck
call neobundle#end()
filetype plugin on 
filetype indent on 
