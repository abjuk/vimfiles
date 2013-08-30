" C and C++ syntax file set up for 1p coding conventions
" Adapted from DSI conventions, which differ slightly

"1p
syn keyword 	cType		u32 fx32 s32 f32 X32 u8 
syn keyword 	cType		dslib utils uVector sVector

"Standard Library
syn keyword 	cType		std vector dequeue string wstring auto_ptr

"syn keyword	cTodo		TODO_KP 

" Classes...
"syn match cppClass	"\<[CDST]\u\w\+\>"
syn match cppClass	"\<\u\w\+\>"

" Variables...
syn match cppLowCamCase  "\<\l\+\w\+\>" display
syn match cppGlobMem "\<[mg][mg]\=_\w*\>"
syn match cppNum "\<p*[nluc]\+[almv]\=\d*\u\w*\>"
syn match cppBool "\<b\u\w*\>"
syn match cppString1 "\<p*sz\u\w*\>"
syn match cppString2 "\<c\=str\u\w*\>"
syn match cppString3 "\<s[almv]\=\u\w*\>"
syn match cppPointer "\<l\=p\+v\=\u\w*\>"
syn match cppFloat "\<fl\=\u\w*\>"
syn match cppPtrStruct "\<p*st[bw]*\u\w*\>"
"syn match cppDWord "\<d\=w\u\w*\>"
"syn match cppHandle "\<p*h\u\w*\>"
syn match cppArray "\<\u\+\["me=e-1
"syn match cppBitmapInfo "\<p*bm\=i\u\w*\>"
"syn match cppSquare "\<sq\u\w*\>"
"syn match cppPoint "\<pt\u\w*\>"
syn match cppCounter "\<[ijklmnxyz]\>"
"syn match cppDialog "\<dlg\u\w*\>"
"syn match cppTSA "\<tsa\u\w*\>"
"syn match cppMDL "\<mdl\u\w*\>"
syn keyword cppMisc item mask copy rval point

" Functions ...
"syn match cppMethod  "\~\=\u[a-zA-Z0-9_<>]\+\s*("me=e-1
syn match cppMethod  "\~\=\a[a-zA-Z0-9_<>]\+\s*("me=e-1

" Constatnts, also highlighted in C++ style comments
syn match cppConst	"\<\u[A-Z_0-9]\+\>" containedin=cCommentL



if !exists("did_kp_syntax_inits")
    let did_kp_syntax_inits = 1
    hi link cppClass		Type
    hi link cppConst		Constant
    hi link cppLowCamCase	Identifier
    hi link cppGlobMem		Identifier
    hi link cppNum		Identifier
    hi link cppBool		Identifier
    hi link cppString1		Identifier
    hi link cppString2		Identifier
    hi link cppString3		Identifier
    hi link cppPointer		Identifier
    hi link cppFloat		Identifier
    hi link cppPtrStruct	Identifier
    "hi link cppDWord		Identifier
    "hi link cppHandle		Identifier
    hi link cppArray		Identifier
    "hi link cppBitmapInfo	Identifier
    "hi link cppSquare		Identifier
    "hi link cppPoint		Identifier
    hi link cppCounter		Identifier
    "hi link cppDialog		Identifier
    "hi link cppTSA		Identifier
    "hi link cppMDL		Identifier
    hi link cppMisc		Identifier
    hi link cppMethod		Function
    hi link cppTodo		Todo
endif
