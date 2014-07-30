
" Variables...
syn match csLowCamCase "\<\l\+\w\+\>" display
syn match csClass	"\<\u\w\+\>"

" Functions ...
syn match csMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1 display

" Constatnts
syn match csConst	"\<\u[A-Z_0-9]\+\>" 

"syn cluster csTop add=csLowCamCase,csClass,csMethod,csConst

if !exists("did_kp_syntax_inits")
   let did_kp_syntax_inits = 1

   hi link csConst		Constant
   hi link csLowCamCase	Identifier
   hi link csMethod		Function
   hi link csType		Type
   hi link csClass		Type
endif
