"Unite.vim setting

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
