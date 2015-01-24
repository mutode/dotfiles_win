"----------------------------------------------------------------
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
" カラーテーマ
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'
"エラー部分ハイライト
"NeoBundle 'jceb/vim-hier'
"c#の補完
" NeoBundleLazy 'nosami/Omnisharp', {
" \   'autoload': {'filetypes': ['cs']},
" \   'build': {
" \     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
" \     'mac': 'xbuild server/OmniSharp.sln',
" \     'unix': 'xbuild server/OmniSharp.sln',
" \   }
" \ }
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
filetype plugin indent on

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
" indentLine Setting 
"-------------------------
" let g:indentLine_color_term = 239
" let g:indentLine_color_gui = '#708090'
" let g:indentLine_char = '|'

"-----------------------------------------
" key setting
"-----------------------------------------
nnoremap s <Nop>
nnoremap sq :<C-u>q<CR>

augroup vimrc-cpp
	autocmd!
	autocmd FileType cpp call s:cpp()
augroup END

"---------------------------------------
" lightline setting
"---------------------------------------
" lightlineの設定
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
" カラースキーマの設定
"-------------------------------------------
set t_Co=256
syntax on
colorscheme hybrid 

scriptencoding utf-8
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

"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
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
