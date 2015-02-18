
" neobundle�ݒ�
" neobundle path�ݒ�
if has('vim_starting')
	set nocompatible
	" runtimepath�̒ǉ�(�K�{)
	set runtimepath+=$COMMON_HOME/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����ݒ�
call neobundle#begin(expand('$COMMON_HOME/.vim/bundle/'))
"let g:neobundle_default_git_protocol='https'

" neobundle���X�V���邽�߂̐ݒ�
NeoBundleFetch 'Shougo/neobundle.vim'

" �ǂݍ��ރv���O�C��
NeoBundle 'Shougo/unite.vim'

" �⊮
NeoBundle 'Shougo/neocomplete.vim'

" c++�̕⊮
" NeoBundle 'osyo-manga/vim-marching'

NeoBundle 'Rip-Rip/clang_complete', {
			\ 'autoload' : {'filetypes' : ['c', 'cpp']}
			\ }

" �񓯊��̂��߂�vimproc
NeoBundle 'Shougo/vimproc.vim'

" vimfiler
NeoBundle 'Shougo/vimfiler.vim'

" vim��œ�����vimshell
NeoBundle 'Shougo/vimshell.vim', {
			\	'build' : {
			\		'windows' : 'make -f make_mingw64.mak',
			\		'cygwin'  : 'make -f make_cygwin.mak',
			\		'mac'     : 'make -f make_mac.mak',
			\		'unix'    : 'make -f make_unix.mak',
			\	},
			\ }

"�R�����g�}���@C + --	
NeoBundle 'tomtom/tcomment_vim'

" ctags��ݒ�
NeoBundle 'szw/vim-tags'

"�c���[�\���ŕ\�� :NERDTree	
NeoBundle 'scrooloose/nerdtree'

"�R���p�C�� :QuickRun
NeoBundle 'thinca/vim-quickrun'

"�C���f���g�̐[����\��
"NeoBundle 'Yggdroot/indentLine'

"powerline�̑����lightline
NeoBundle 'itchyny/lightline.vim'

" for MarkDown
NeoBundle 'kannokanno/previm'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tyru/open-browser.vim'

" evervim for Evernote
NeoBundle 'kakkyz81/evervim'

" �J���[�e�[�}
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'

"�G���[�����n�C���C�g
"NeoBundle 'jceb/vim-hier'

"c#�̕⊮
" NeoBundleLazy 'nosami/Omnisharp', {
" \   'autoload': {'filetypes': ['cs']},
" \   'build': {
" \     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
" \     'mac': 'xbuild server/OmniSharp.sln',
" \     'unix': 'xbuild server/OmniSharp.sln',
" \   }
" \ }

" Git�p
NeoBundle 'tpope/vim-fugitive'

"�L�[�}�b�s���O
NeoBundle 'kana/vim-submode'

" Check install
NeoBundleCheck
call neobundle#end()
filetype plugin on 
filetype indent on 
