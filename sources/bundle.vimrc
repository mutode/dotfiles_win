
" neobundle設定
" neobundle path設定
if has('vim_starting')
	set nocompatible
	" runtimepathの追加(必須)
	set runtimepath+=$COMMON_HOME/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期設定
call neobundle#begin(expand('$COMMON_HOME/.vim/bundle/'))
"let g:neobundle_default_git_protocol='https'

" neobundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグイン
NeoBundle 'Shougo/unite.vim'

" 補完
NeoBundle 'Shougo/neocomplete.vim'

" c++の補完
" NeoBundle 'osyo-manga/vim-marching'

NeoBundle 'Rip-Rip/clang_complete', {
			\ 'autoload' : {'filetypes' : ['c', 'cpp']}
			\ }

" 非同期のためのvimproc
NeoBundle 'Shougo/vimproc.vim'

" vimfiler
NeoBundle 'Shougo/vimfiler.vim'

" vim上で動かすvimshell
NeoBundle 'Shougo/vimshell.vim', {
			\	'build' : {
			\		'windows' : 'make -f make_mingw64.mak',
			\		'cygwin'  : 'make -f make_cygwin.mak',
			\		'mac'     : 'make -f make_mac.mak',
			\		'unix'    : 'make -f make_unix.mak',
			\	},
			\ }

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

" エラー部分ハイライト
"NeoBundle 'jceb/vim-hier'

" c#の補完
NeoBundleLazy 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }
" C#用syntaxとチェッカー
NeoBundleLazy 'OrangeT/vim-csharp', { 'autoload': { 'filetypes': ['cs'] } }
NeoBundle 'scrooloose/syntastic'

"キーマッピング
NeoBundle 'kana/vim-submode'

" Check install
NeoBundleCheck
call neobundle#end()
filetype plugin on 
filetype indent on 
