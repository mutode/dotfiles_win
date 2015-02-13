scriptencoding utf-8

"vim ���_
" ctags�Ńh���C�u���Ⴄ�Ƃ��ɏ�܂�tags�t�@�C����T���Ɍ����Ă���Ȃ�
" .��ł����Ƃ��ɕ⊮���������Ă���̂�������Ȃ����ƂĂ��x��
" �ۊǂł��Ȃ� 
" ��������
" evervim�������Ȃ�
" �C���f���g����������

" home�����ʕϐ��ɓ���Ă���
if has('mac')
	let $COMMON_HOME=~
elseif has("win32") || has('win64')
	let $COMMON_HOME=$HOME
endif

" home�ȊO��path
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



