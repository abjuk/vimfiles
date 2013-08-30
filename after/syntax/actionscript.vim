
" Variables...
syn match asLowCamCase  "\<\l\+\w\+\>" display

" Functions ...
syn match asMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

" Constatnts
syn match asConst	"\<\u[A-Z_0-9]\+\>" 
"
"1p
syn keyword 	asType		aslib

if !exists("did_kp_syntax_inits")
    let did_kp_syntax_inits = 1

    hi link asConst		Constant
    hi link asLowCamCase	Identifier
    hi link asMethod		Function
    hi link asType		Type
endif
