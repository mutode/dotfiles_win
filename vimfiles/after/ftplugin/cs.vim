scriptencoding utf-8

setlocal omnifunc=OmniSharp#Complete
setlocal formatoptions-=r
setlocal formatoptions-=o
setlocal tabstop=4

setlocal syntax=cs
let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
