# ���win�p��vimrc

mac�悤�ɂ��g����C�����Ȃ��ł��Ȃ�
gvim��p�̐ݒ�͂Ȃ�
neobundle��runtimepath�������邭�炢

## Install

1. git, python(2.7.9 32bit), kaoriya-vim(32bit), ctags, MinGW(package(gcc-g++, msys-base, base,developer-toolkit), LLVM(3.4)���ŏ��ɓ���Ă���

1. kaoriya-vim����x���N�����Ă��Ȃ��ꍇ�͈�xgvim.exe���N�������Ă���

1. ���ϐ�HOME�̐ݒ�APath��ctags�Ȃǂ�ǉ�

1. powershell���N�����A�z�[���f�B���N�g���ŁA  
`
git clone http://github.com/mutode/dotfiles_win.git
`

1. powershell���Ǘ��ҋN�����A�z�[���f�B���N�g���ŁA  
`
cmd /c mklink .vimrc "C:\Users\username\dotfiles_win\.vimrc"
`

1. powershell���Ǘ��ҋN�����A�z�[���f�B���N�g���ŁA  
`
cmd /c mklink /D vimfiles "C:\Users\username\dotfiles_win\vimfiles"
`

1. powershell���N�����A�z�[���f�B���N�g���ŁA  
`
git clone http://github.com/Shougo/neobundle.vim ".vim\bundle\neobundle.vim"
`

1. `kaoriya-vim�C���X�g�[���t�H���_(vim74�Ȃ񂿂��)/plugins/vimproc/autoload`����windows�pdll��`~/.vim/bundle/vimproc/autoload`���ɃR�s�[

1. 
