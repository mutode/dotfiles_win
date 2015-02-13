scriptencoding utf-8

"vim 問題点
" ctagsでドライブが違うときに上までtagsファイルを探しに言ってくれない
" .を打ったときに補完を検索しているのか分からないがとても遅い
" 保管できない 
" 文字化け
" evervimが動かない
" インデントがおかしい

" homeを共通変数に入れておく
if has('mac')
	let $COMMON_HOME=~
elseif has("win32") || has('win64')
	let $COMMON_HOME=$HOME
endif

" home以外のpath
source $COMMON_HOME/dotfiles_win/sources/path.vimrc

" NeoBundle
source $COMMON_HOME/dotfiles_win/sources/bundle.vimrc

" basic
source $COMMON_HOME/dotfiles_win/sources/basic.vimrc

" plugin setting
source $COMMON_HOME/dotfiles_win/sources/unite.vimrc
source $COMMON_HOME/dotfiles_win/sources/neocomplete.vimrc
source $COMMON_HOME/dotfiles_win/sources/cplus_common.vimrc
source $COMMON_HOME/dotfiles_win/sources/cplus_complete.vimrc
source $COMMON_HOME/dotfiles_win/sources/csharp_complete.vimrc
source $COMMON_HOME/dotfiles_win/sources/other.vimrc
source $COMMON_HOME/dotfiles_win/sources/keybind.vimrc



