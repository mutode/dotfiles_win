"----------------------------------------------------------------
scriptencoding utf-8
" 個人設定
" neobundle設定
" neobundle path設定
if has('vim_starting')
	set nocompatible
	" runtimepathの追加(必須)
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" neobundle.vimの初期設定
call neobundle#begin(expand('~/.vim/bundle/'))
"let g:neobundle_default_git_protocol='https'

" neobundleを更新するための設定
NeoBundleFetch 'Shougo/neobundle.vim'

" 読み込むプラグイン
NeoBundle 'Shougo/unite.vim'

" 補完
NeoBundle 'Shougo/neocomplete.vim'

" 非同期のためのvimproc
NeoBundle 'Shougo/vimproc.vim'

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

"ツリー構造で表示 :NERDTree	
NeoBundle 'scrooloose/nerdtree'

"コンパイラ :QuickRun
NeoBundle 'thinca/vim-quickrun'

"インデントの深さを表示
"NeoBundle 'Yggdroot/indentLine'

"powerlineの代わりにlightline
NeoBundle 'itchyny/lightline.vim'

" for MarkDown
NeoBundle 'kannokanno/previm'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'tyru/open-browser.vim'

" カラーテーマ
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'

"エラー部分ハイライト
"NeoBundle 'jceb/vim-hier'

"c#の補完
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
" Git用
NeoBundle 'tpope/vim-fugitive'
"プロジェクトでルートを探す
" NeoBundle 'airblade/vim-rooter'
" if ! empty(neobundle#get("vim-rooter"))
" 	let g:rooter_use_lcd = 1
" 	let g:rooter_patterns = ['tags', '.git', '.git/', '_darcs/', '.hg/','.bzr/', 'Makefile', 'GNUMakefile', 'GNUmakefile', '.svn/']
" endif

"キーマッピング
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
" 入力モードで開始すめる
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウをsplit して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦にvsplitして開く
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
" lightlineの設定
" lightlineをデフォルト設定にしておかないとおかしくなる
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
" ctagsの設定 
"-------------------------------------------
if has('path_extra')
	set tags+=tags;
endif

"-------------------------------------------
" カラースキーマの設定
"-------------------------------------------
set t_Co=256
syntax on
colorscheme hybrid 

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" タブの画面上での幅
set tabstop=4
" タブをスペースに展開しない (expandtab:展開する)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 行番号を非表示 (nonumber:非表示)
set number
" ルーラーを表示 (ruler:表示)
set noruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
" set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" undoファイルを無効化
set noundofile
" バックアップファイルを作成しない
" する場合はフォルダを指定した方がいい(ex set backupdir=C:/Temp)
set nobackup
" insertモードでも英語から始まるように
set iminsert=0
set imsearch=-1
