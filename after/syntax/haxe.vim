
" Variables...
syn match hxLowCamCase  "\<\l\+\w\+\>" display

" Classes
syn match hxUpCamCase	"\<\u\w\+\>"

" Constatnts
syn match hxConst	"\<\u[A-Z_0-9]\+\>" 

syn match hxUpperClass	"\<\u\+\."

" Functions ...
syn match hxMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

if !exists("did_kp_syntax_inits")
    let did_kp_syntax_inits = 1

    hi link hxConst			Constant
    hi link hxLowCamCase	Identifier
    hi link hxUpCamCase		Type
    hi link hxUpperClass	Type
    hi link hxMethod		Function
    hi link hxType			Type
endif
