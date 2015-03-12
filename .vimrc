scriptencoding utf-8

" vim Problems

" ctagsで上までtagsファイルを検索しにいってくれない
" OmnisharpをいちいちPowershellから起動させなければいけない
" ctagsが使いづらい
" cocos用のインクルードパスを追加させるために、ローカルでftpluginを持たせる必要がある
" unite.vimでファイル検索をgit全体からコマンド一つで行いたい無理かも
" C#syntaxがダメ

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
source $COMMON_HOME/dotfiles_win/sources/lightline.vimrc
source $COMMON_HOME/dotfiles_win/sources/other.vimrc
source $COMMON_HOME/dotfiles_win/sources/keybind.vimrc
