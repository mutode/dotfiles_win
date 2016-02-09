" basic vimrc

scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,mac,dos
" font
set guifont=Consolas:h12
set columns=80
set lines=30
set guifontwide=Consolas

" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase
" タブの画面上での幅
set tabstop=4
" Vimが挿入するインデントの幅
set shiftwidth=4
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
" tab:タブ, trail:行末空白, eol:改行, extends:折り返し
" if has('win32') || has('win64')
set listchars=tab:>>
" elseif has('mac')
"	se t listchars=tab:»•,trail:•,eol:↲,extends:»
" endif
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=1
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
" 検索時ハイライトを行わないように(逆 hlsearch)
set nohlsearch
" cursorline 行の強調表示
set cursorline 
" 改行時に自動コメントアウトを行わない
" こっちで定義しても意味がなさそう
" (ftpluginのほうに書かないと反映されない)
" setlocal formatoptions-=r
" setlocal formatoptions-=o
autocmd FileType * setlocal formatoptions -=ro
