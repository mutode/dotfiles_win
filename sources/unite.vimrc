"Unite.vim setting

" 入力モードで開始すめる
let g:unite_enable_start_insert=1
nnoremap [unite] <Nop>
nmap <Space>u [unite]
" バッファ一覧
noremap <silent> [unite]u :<C-u>Unite<Space>file_rec<CR>
"noremap <silent> [unite]g :<C-u>Unite grep<CR>
noremap <silent> [unite]f :<C-u>Unite<Space>file source<CR>
noremap <silent> [unite]h :<C-u>Unite buffer<CR>

" ウィンドウをsplit して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦にvsplitして開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCkey & ESCkey to END
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" バッファを移動したときに
" 自動的にプロジェクトルートをカレントディレクトリにする
function! ChangeCurrentDirectoryToProjectRoot()
	let root = unite#util#path2project_directory(expand('%'))
	execute 'lcd' root
endfunction
:au BufEnter * :call ChangeCurrentDirectoryToProjectRoot()

" 大文字小文字を区別しない
let g:unite_enable_ignore_case=1
let g:unite_enable_smart_case=1

nnoremap <silent> [unite]g :<C-u>Unite grep: -buffer-name=search-buffer<CR><C-R>
" grep検索結果の再呼び出し
nnoremap <silent> [unite]r :<C-u>UniteResume search-buffer<CR>

" unite grepにag(the silver searcher)を使う
if executable('ag')
	let g:unite_source_grep_command = 'ag'
	let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
	let g:unite_source_grep_recursive_opt = ''
endif

