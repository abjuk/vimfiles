
" Variables...
syn match pyLowCamCase  "\<\l\+\w\+\>" display

" Functions ...
syn match pyMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

" Constatnts
syn match pyConst	"\<\u[A-Z_0-9]\+\>" 

if !exists("did_kp_syntax_inits")
    let did_kp_syntax_inits = 1

    hi link pyConst		Constant
    hi link pyLowCamCase	Identifier
    hi link pyMethod		Function
endif
