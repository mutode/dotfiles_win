# 主にwin用のvimrc

gvim専用の設定はない

## Install
### windows

1. git, python(2.7.9 32bit), kaoriya-vim(32bit), ctagsを最初に入れておく

1. kaoriya-vimを一度も起動していない場合は一度gvim.exeを起動させておく

1. 環境変数HOMEの設定、Pathにctagsなどを追加

1. powershellを起動し、ホームディレクトリで、  
`
git clone http://github.com/mutode/dotfiles_win.git
`

1. powershellを管理者起動し、ホームディレクトリで、  
`
cmd /c mklink .vimrc "C:¥Users¥username¥dotfiles_win¥.vimrc"
`

1. powershellを管理者起動し、ホームディレクトリで、  (文字化け対策)
`
cmd /c mklink _gvimrc "C:¥Users¥username¥dotfiles_win¥_gvimrc"
`

1. powershellを管理者起動し、ホームディレクトリで、  
`
cmd /c mklink /D vimfiles "C:¥Users¥username¥dotfiles_win¥vimfiles"
`

1. powershellを起動し、ホームディレクトリで、  
`
git clone http://github.com/Shougo/neobundle.vim ".vim¥bundle¥neobundle.vim"
`

1. `kaoriya-vimインストールフォルダ(vim74なんちゃら)/plugins/vimproc/autoload`下のwindows用dllを`~/.vim/bundle/vimproc/autoload`下にコピー。またはvisualstudioやMinGWなどで自前ビルドをして`~/.vim/bundle/vimproc/autoload`下にコピー。

1. `~/.vim/bundle/jedi-vim/`で`git submodule update --init`をすること

