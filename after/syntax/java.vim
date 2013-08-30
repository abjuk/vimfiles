
" Variables...
syn match javaLowCamCase "\<\l\+\w\+\>" display
syn match javaClass	"\<\u\w\+\>"

" Functions ...
syn match javaMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

" Constatnts
syn match javaConst	"\<\u[A-Z_0-9]\+\>" 

syn cluster javaTop add=javaLowCamCase,javaClass,javaMethod,javaConst

if !exists("did_kp_syntax_inits")
   let did_kp_syntax_inits = 1

   hi link javaConst		Constant
   hi link javaLowCamCase	Identifier
   hi link javaMethod		Function
   hi link javaType		Type
   hi link javaClass		Type
endif
