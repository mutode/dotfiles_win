" cplus common setting

let $VIM_CPP_STDLIB = "C:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"

augroup vimrc-set_filetype_cpp
	autocmd!
    " $CPP_STDLIB �������̊K�w�̃t�@�C�����J�����
    " filetype ���ݒ肳��Ă��Ȃ��ꍇ�� filetype=cpp ��ݒ肷��
	autocmd BufReadPost $VIM_CPP_STDLIB/* if empty(&filetype) | set filetype=cpp | endif
augroup END
" augroup vimrc-cpp
" 	autocmd FileType cpp call s:cpp()
" 	autocmd!
" augroup END


" filetype=cpp ���ݒ肳�ꂽ���ɌĂ΂��֐� 
" function! s:cpp()
" 	" �C���N���[�h�f�B���N�g���̃p�X��ݒ�
" 	" ������path�����ĕς���
" 	setlocal path+=$VIM_CPP_STDLIB
"
" 	" �^�u�����̒���
" 	setlocal tabstop=4
" 	setlocal shiftwidth=4
"
" 	" �󔒕������g�p
" 	setlocal expandtab
"
" 	" quickrun.vim �̐ݒ�
" " 	let b:quickrun_config = {
" " \		"hook/add_include_option/enable" : 1
" " \	}
" endfunction
