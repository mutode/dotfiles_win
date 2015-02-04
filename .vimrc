"----------------------------------------------------------------
scriptencoding utf-8
" �l�ݒ�
" neobundle�ݒ�
" neobundle path�ݒ�
if has('vim_starting')
	set nocompatible
	" runtimepath�̒ǉ�(�K�{)
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vim�̏����ݒ�
call neobundle#begin(expand('~/.vim/bundle/'))
"let g:neobundle_default_git_protocol='https'

" neobundle���X�V���邽�߂̐ݒ�
NeoBundleFetch 'Shougo/neobundle.vim'

" �ǂݍ��ރv���O�C��
NeoBundle 'Shougo/unite.vim'

" �⊮
NeoBundle 'Shougo/neocomplete.vim'

" �񓯊��̂��߂�vimproc
NeoBundle 'Shougo/vimproc.vim'

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

" �J���[�e�[�}
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'

"�G���[�����n�C���C�g
"NeoBundle 'jceb/vim-hier'

"c#�̕⊮
NeoBundleLazy 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }
NeoBundle 'OrangeT/vim-csharp'
NeoBundle 'tpope/vim-dispatch'
" Git�p
NeoBundle 'tpope/vim-fugitive'
"�v���W�F�N�g�Ń��[�g��T��
" NeoBundle 'airblade/vim-rooter'
" if ! empty(neobundle#get("vim-rooter"))
" 	let g:rooter_use_lcd = 1
" 	let g:rooter_patterns = ['tags', '.git', '.git/', '_darcs/', '.hg/','.bzr/', 'Makefile', 'GNUMakefile', 'GNUmakefile', '.svn/']
" endif

"�L�[�}�b�s���O
NeoBundle 'kana/vim-submode'

" Check install
NeoBundleCheck
call neobundle#end()
filetype plugin on 
filetype indent off

"------------------------------------------------------------------------
" plugin setting 
"
"---------------------------
"Unite.vim setting
"--------------------------
" ���̓��[�h�ŊJ�n���߂�
let g:unite_enable_start_insert=1
" �o�b�t�@�ꗗ
noremap <C-P> :Unite buffer<CR>
" �t�@�C���ꗗ
noremap <C-N> :Unite -buffer-name=file file<CR>
" �ŋߎg�����t�@�C���̈ꗗ
noremap <C-Z> :Unite file_mru<CR>
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" �E�B���h�E��split ���ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" �E�B���h�E���c��vsplit���ĊJ��
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCkey & ESCkey to END
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

"-------------------------
" neocomplete setting
"-------------------------
"auto pop
setlocal omnifunc=OmniSharp#Complete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }
" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.cs = '[^.]\.\%(\u\{2,}\)\?'

"-------------------------
" indentLine Setting 
"-------------------------
" let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#708090'
" let g:indentLine_char = '|'

"-----------------------------------------
" key setting
"-----------------------------------------
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap sp gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap sw <C-w>w
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT :<C-u>Unite tab<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

augroup vimrc-cpp
	autocmd!
	autocmd FileType cpp call s:cpp()
augroup END

"---------------------------------------
" lightline setting
"---------------------------------------
" lightline�̐ݒ�
" lightline���f�t�H���g�ݒ�ɂ��Ă����Ȃ��Ƃ��������Ȃ�
" let g:lightline = {
"         \ 'colorscheme': 'wombat',
"         \ 'mode_map': {'c': 'NORMAL'},
"         \ 'active': {
"         \   'left': [
"         \     ['mode', 'paste'],
"         \     ['fugitive', 'gitgutter', 'filename'],
"         \   ],
"         \   'right': [
"         \     ['lineinfo', 'syntastic'],
"         \     ['percent'],
"         \     ['charcode', 'fileformat', 'fileencoding', 'filetype'],
"         \   ]
"         \ },
"         \ 'component_function': {
"         \   'modified': 'MyModified',
"         \   'readonly': 'MyReadonly',
"         \   'fugitive': 'MyFugitive',
"         \   'filename': 'MyFilename',
"         \   'fileformat': 'MyFileformat',
"         \   'filetype': 'MyFiletype',
"         \   'fileencoding': 'MyFileencoding',
"         \   'mode': 'MyMode',
"         \   'syntastic': 'SyntasticStatuslineFlag',
"         \   'charcode': 'MyCharCode',
"         \   'gitgutter': 'MyGitGutter',
"         \ },
" 	\ }

"-------------------------------------------
"PreVim
"-------------------------------------------
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END


"-------------------------------------------
" OmniSharp
"-------------------------------------------
let g:OmniSharp_host = "http://localhost:2001"
" let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
"Set the type lookup function to use the preview window instead of the status line
" let g:OmniSharp_typeLookupInPreview = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
" set noshowmatch

"Super tab settings
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
" let g:SuperTabClosePreviewOnPopupClose = 1

"don't autoselect first item in omnicomplete, show if only one item (for preview)
" set completeopt=longest,menuone,preview

"-------------------------------------------
" ctags�̐ݒ� 
"-------------------------------------------
if has('path_extra')
	set tags+=tags;
endif

"-------------------------------------------
" �J���[�X�L�[�}�̐ݒ�
"-------------------------------------------
set t_Co=256
syntax on
colorscheme hybrid 

" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase
" �^�u�̉�ʏ�ł̕�
set tabstop=4
" �^�u���X�y�[�X�ɓW�J���Ȃ� (expandtab:�W�J����)
set noexpandtab
" �����I�ɃC���f���g���� (noautoindent:�C���f���g���Ȃ�)
set autoindent
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=indent,eol,start
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂� (nowrapscan:�߂�Ȃ�)
set wrapscan
" ���ʓ��͎��ɑΉ����銇�ʂ�\�� (noshowmatch:�\�����Ȃ�)
set showmatch
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�� :help wildmenu)
set wildmenu
" �e�L�X�g�}�����̎����܂�Ԃ�����{��ɑΉ�������
set formatoptions+=mM
" �s�ԍ����\�� (nonumber:��\��)
set number
" ���[���[��\�� (ruler:�\��)
set noruler
" �^�u����s��\�� (list:�\��)
set nolist
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
"set listchars=tab:>-,extends:<,trail:-,eol:<
" �����s��܂�Ԃ��ĕ\�� (nowrap:�܂�Ԃ��Ȃ�)
set wrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
" set laststatus=2
" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=2
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title
" undo�t�@�C���𖳌���
set noundofile
" �o�b�N�A�b�v�t�@�C�����쐬���Ȃ�
" ����ꍇ�̓t�H���_���w�肵����������(ex set backupdir=C:/Temp)
set nobackup
" insert���[�h�ł��p�ꂩ��n�܂�悤��
set iminsert=0
set imsearch=-1
