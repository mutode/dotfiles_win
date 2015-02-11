" basic vimrc

" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase
" �^�u�̉�ʏ�ł̕�
set tabstop=4
" Vim���}������C���f���g�̕�
set shiftwidth=4
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
" �������n�C���C�g���s��Ȃ��悤��(�t hlsearch)
set nohlsearch
" ���s���Ɏ����R�����g�A�E�g���s��Ȃ�
" �������Œ�`���Ă��Ӗ����Ȃ�����
" (ftplugin�̂ق��ɏ����Ȃ��Ɣ��f����Ȃ�)
setlocal formatoptions-=r
setlocal formatoptions-=o
