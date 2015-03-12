" lightline setting



"---------------------------------------
" lightline setting
"---------------------------------------
" lightlineの設定
"
let g:lightline = {
			\ 'colorscheme': 'solarized',
			\ 'mode_map': {'c': 'NORMAL'},
			\ 'active': {
			\  'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename', ]]
			\ },
			\ 'component_function': {
			\ 'modified': 'MyModified',
			\ 'readonly': 'MyReadonly',
			\ 'fugitive': 'MyFugitive',
			\ 'filename': 'MyFilename',
			\ 'fileformat': 'MyFileformat',
			\ 'filetype': 'MyFiletype',
			\ 'fileencoding': 'MyFileencoding',
			\ 'mode': 'MyMode'
			\ }
			\}

function! MyModified()
	return &ft =~ 'help\|vimfiler\|gundo' ? "" : &modified ? '+' : &modifiable ? '' : '-'
endfunction
function! MyReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
	return('' != MyReadonly() ? MyReadonly() . ' ' : '') .
				\ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
				\ &ft == 'unite' ? unite#get_status_string() :
				\ &ft == 'vimshell' ? vimshell#get_status_string() :
				\ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
				\ ('' != MyModified() ? ' ' . Mymodified : '')
endfunction

function! MyFugitive()
	try
		if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
			return fugitive#head()
		endif

	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? &fileformat: ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : '' 
endfunction

function! MyFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fect : &enc) : ''
endfunction

function! MyMode()
	return winwidth(0) > 60 ? lightline#mode() : ''
endfunction

" let g:lightline = {
" 			\ 'colorscheme': 'wombat',
" 			\ 'mode_map': {'c': 'NORMAL'},
" 			\ 'active': {
" 			\ 'left': [
" 			\  ['mode', 'paste'],
" 			\  ['fugitive', 'gitgutter', 'filename'],],
" 			\ 'right': [ 
" 			\  [ 'lineinfo', 'syntastic' ],
" 			\  [ 'percent' ],
" 			\  [ 'charcode', 'fileformat', 'fileencoding', 'filetype'],]
" 			\ },
" 			\'component_expand': {
" 			\ 'syntastic': 'SyntasticStatuslineFlag'
" 			\ },
" 			\'component_type': {
" 			\ 'syntastic': 'error',
" 			\ },
" 			\ }
"
" let g:syntastic_mode_map = { 'mode': 'passive' }
" augroup AutoSyntastic
" 	autocmd!
" 	autocmd BufWritePost *.cs call s:syntastic()
" augroup END
" function! s:syntastic()
" 	SyntasticCheck
" 	call lightline#update()
" endfunction
