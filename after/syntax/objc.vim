
" If items in [] aren't hilighting correctly, make sure the original 
" objcMethodCall definition is commented out in $VIMRUNTIME/syntax/objc.vim
syn region objcMethodCall start=/\[/ end=/\]/ contains=ALL

syn match objcMethod  "\<\l[a-zA-Z0-9_<>]\+\s*:"me=e-1

hi link objcMethod		Function
