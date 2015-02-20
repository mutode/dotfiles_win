scriptencoding utf-8

" vim Problems

" ctagsで上までtagsファイルを検索しにいってくれない
" OmnisharpをいちいちPowershellから起動させなければいけない
" macでvimfilesを読みにいかないので他の方法が必要
" ctagsが使いづらい

if has('mac')
	let $COMMON_HOME=$HOME
elseif has("win32") || has('win64')
	let $COMMON_HOME=$HOME
endif

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
