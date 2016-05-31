"""""""""""""""""""""""""""""""""""""""""
"  Global Settings
"""""""""""""""""""""""""""""""""""""""""
if has('mac')
	set columns=110
endif

set lines=54
set titlelen=144

" This mapping was giving me trouble in git commits, which is basically
" the only thing I do in a terminal window.
" Easily remove search highlighting with Esc
nnoremap <Esc> :nohlsearch<CR><Esc>
