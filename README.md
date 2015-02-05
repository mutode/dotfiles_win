# 主にwin用のvimrc

## Install

1. git, kaoriya-vimを最初に入れておく

1. kaoriya-vimを一度も起動していない場合は一度gvim.exeを起動させておく

1. powershellを起動し、ホームディレクトリで、
`
git clone http://github.com/mutode/dotfiles_win.git
`

1. powershellを管理者起動し、ホームディレクトリで、
`
cmd /c mklink .vimrc "C:\Users\username\dotfiles_win\.vimrc"
`

1. powershellを管理者起動し、ホームディレクトリで、
`
cmd /c mklink /D vimfiles "C:\Users\username\dotfiles_win\vimfiles"
`

1. powershellを起動し、ホームディレクトリで、
`
git clone http://github.com/Shougo/neobundle.vim ".vim\bundle\neobundle.vim"
`

1. kaoriya-vimインストールフォルダ/plugins/vimproc/autoload下のwindows用dllを~/.vim/bundle/vimproc/autoload下にコピー

1. 
