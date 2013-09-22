set background=dark

highlight clear

if exists("syntax_on")
	syntax reset
endif

let colors_name="abjuk"

highlight Normal	guifg=cyan	guibg=black	ctermfg=cyan	ctermbg=black
highlight Cursor	guifg=black	guibg=Green

highlight Comment	guifg=maroon	gui=italic	ctermfg=5	ctermbg=0
highlight Constant	guifg=purple	ctermfg=6
highlight Error		guifg=red	guibg=yellow	ctermfg=1	ctermbg=3
highlight Function	guifg=yellow	ctermfg=3
highlight Identifier	guifg=orange	ctermfg=3
highlight PreProc	guifg=forestgreen		ctermfg=14
highlight Special	guifg=red	guibg=black	ctermfg=5
highlight Statement	guifg=dodgerblue		gui=NONE	ctermfg=2
highlight Todo		guifg=purple	guibg=black	ctermfg=red	ctermbg=yellow
highlight Type		guifg=green	gui=NONE	ctermfg=3	cterm=bold

highlight CursorLineNr	guifg=yellow2	gui=none
highlight Delimiter	guifg=Red	gui=bold	ctermfg=1	cterm=bold
highlight Directory	guifg=Blue	ctermfg=DarkBlue
highlight ErrorMsg	guifg=Red	guibg=black	ctermfg=1	cterm=bold	
highlight Folded	guifg=wheat	guibg=black	ctermfg=3	ctermbg=2
highlight LineNr	guifg=Brown	cterm=bold	ctermfg=3
highlight ModeMsg	guifg=yellow2	guibg=red	cterm=bold	ctermfg=3	ctermbg=1
highlight MoreMsg	guifg=Green	cterm=bold	ctermfg=2	gui=bold
highlight NonText	guifg=DarkSlateGray		ctermfg=2
highlight Question	guifg=Green	cterm=bold	ctermfg=2	gui=bold
highlight Search	guifg=Red	guibg=black	ctermbg=2
highlight SpecialKey	guifg=DarkSlateGray		ctermfg=DarkBlue
highlight StatusLine	guifg=wheat	guibg=#2f4f4f	gui=NONE
highlight StatusLine	cterm=bold	ctermfg=3	ctermbg=4
highlight StatusLineNC	guifg=#071f1f	guibg=#5f9f9f	ctermfg=3	ctermbg=2
highlight Title		guifg=Blue	gui=bold	cterm=bold	ctermfg=4
highlight Visual	guifg=yellow	guibg=blue	cterm=bold	ctermfg=6	ctermbg=5
highlight WarningMsg	guifg=Red	guibg=black	cterm=bold	ctermfg=1	ctermbg=4

highlight Pmenu		guifg=black	guibg=#5f9f9f
highlight PmenuSel	guifg=wheat	guibg=dodgerblue
highlight PmenuSbar	guifg=yellow	guibg=red
highlight PmenuThumb	guifg=green	guibg=orange

highlight MyTagListTagName	guifg=yellow	ctermfg=3
highlight MyTagListTagScope	guifg=green	cterm=bold	ctermfg=3



