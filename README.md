# 主にwin用のvimrc

macようにも使える気がしないでもない
gvim専用の設定はない
neobundleのruntimepathをかえるくらい

## Install
### windows

1. git, python(2.7.9 32bit), kaoriya-vim(32bit), ctags, MinGW(package(gcc-g++, msys-base, base,developer-toolkit), LLVM(3.4)を最初に入れておく

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

1. powershellを管理者起動し、ホームディレクトリで、  
`
cmd /c mklink /D vimfiles "C:¥Users¥username¥dotfiles_win¥vimfiles"
`

1. powershellを起動し、ホームディレクトリで、  
`
git clone http://github.com/Shougo/neobundle.vim ".vim¥bundle¥neobundle.vim"
`

1. `kaoriya-vimインストールフォルダ(vim74なんちゃら)/plugins/vimproc/autoload`下のwindows用dllを`‾/.vim/bundle/vimproc/autoload`下にコピー

1. cmdを管理者で起動し、
`
netsh http add urlacl url=http://+:2000/ user=username
`

1. powershellを起動し、`~/.vim/bundle/Omnisharp/`に移動

1. 上記の後に
`
git submodule update --init
`
`
cd server
`
`
MSBuild.exe /p:Platform="Any CPU"
`

##### ＊Omnisharp

- windowsでOmnisharpを起動するときはpowershellを開き
`
path/to/OmniSharp/server/OmniSharp/bin/Debug/OmniSharp.exe -s path/to/project.sln
`


### mac
1. pythonが入ったvim、xcode、

1. ~で
`
git clone http://github.com/mutode/dotfiles_win
`

1. ~で
`
mkdir .vim
`

1. ~で
`
mkdir .vim/bundle
`

1. ~で
`
ln dotfiles_win/.vimrc .vimrc
`

1. ~/.vim/で
`
ln -s ~/dotfiles_win/vimfiles/after ./
`

1. ~/.vim/bundleで
`
git clone http://github.com/Shougo/neobundle.vim
`

1. vimを起動して:NeoBundleInstallをするとエラーが出るので一旦、終了させる

1. ~/.vim/bundle/neobundle.vim/vimproc.vim というフォルダがあるのでそこに移動し
`
make
`

1. もう一度vimを起動させる

