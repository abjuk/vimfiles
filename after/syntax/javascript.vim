
" Variables...
syn match jsLowCamCase  "\<\l\+\w\+\>" display

" Classes
syn match jsUpCamCase	"\<\u\w\+\>"

" Constatnts
syn match jsConst	"\<\u[A-Z_0-9]\+\>" 

" Functions ...
syn match jsMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

if !exists("did_kp_syntax_inits")
    let did_kp_syntax_inits = 1

    hi link jsConst		Constant
    hi link jsLowCamCase	Identifier
    hi link jsUpCamCase		Type
    hi link jsMethod		Function
    hi link jsType		Type
endif
