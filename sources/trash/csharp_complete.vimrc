" csharp complete setting

"-------------------------------------------
" OmniSharp
"-------------------------------------------
let g:OmniSharp_host = "http://localhost:2010"
" let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues']
"Set the type lookup function to use the preview window instead of the status line
" let g:OmniSharp_typeLookupInPreview = 1

"Showmatch significantly slows down omnicomplete
"when the first match contains parentheses.
" set noshowmatch

"Super tab settings
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
" let g:SuperTabClosePreviewOnPopupClose = 1

"don't autoselect first item in omnicomplete, show if only one item (for preview)
" set completeopt=longest,menuone,preview
