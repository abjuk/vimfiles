set background=dark

highlight clear

if exists("syntax_on")
	syntax reset
endif

let colors_name="abjuk"

highlight Statement   guifg=dodgerblue term=bold ctermfg=2 
highlight Function    guifg=yellow term=underline ctermfg=3 
highlight Identifier  guifg=orange term=underline ctermfg=3 
highlight Constant    guifg=purple term=underline ctermfg=6 
highlight Comment     guifg=maroon term=italic ctermfg=5 ctermbg=0 
highlight Type        guifg=green term=underline cterm=bold ctermfg=3 
highlight Special     guifg=red term=bold ctermfg=5 
highlight Todo        guifg=purple term=bold ctermfg=red ctermbg=yellow 
highlight PreProc     guifg=forestgreen term=underline ctermfg=14 
highlight Normal      guifg=cyan guibg=black ctermfg=white ctermbg=black 

highlight Cursor      guifg=black guibg=Green 
highlight Delimiter   guifg=Red term=bold cterm=bold ctermfg=1 gui=bold 
highlight Directory   guifg=Blue term=bold ctermfg=DarkBlue 
highlight ErrorMsg    guifg=Red guibg=black term=standout cterm=bold ctermfg=1 gui=bold 
highlight LineNr      guifg=Brown term=underline cterm=bold ctermfg=3 
highlight MoreMsg     guifg=Green term=bold cterm=bold ctermfg=2 gui=bold 
highlight NonText     guifg=DarkSlateGray term=bold ctermfg=2 
highlight Question    guifg=Green term=standout cterm=bold ctermfg=2 gui=bold 
highlight Search      guifg=Red term=reverse ctermbg=2 
highlight SpecialKey  guifg=DarkSlateGray term=bold ctermfg=DarkBlue 
highlight Title       guifg=Blue term=bold cterm=bold ctermfg=4 gui=bold 
highlight WarningMsg  guifg=Red term=standout cterm=bold ctermfg=1 ctermbg=4 
highlight ModeMsg     guifg=yellow2 guibg=red term=bold cterm=bold ctermfg=3 ctermbg=1 
" highlight Folded      guifg=cyan term=reverse cterm=bold ctermfg=3 ctermbg=2 guibg=#3f3f3f 
highlight Folded      guifg=wheat term=reverse cterm=bold ctermfg=3 ctermbg=2 guibg=black
highlight Error       guifg=red guibg=yellow term=standout cterm=bold ctermbg=1 ctermfg=1 gui=bold 
highlight StatusLine  guifg=wheat guibg=#2f4f4f term=reverse cterm=bold ctermfg=3 ctermbg=4 
highlight StatusLineNC guifg=#071f1f guibg=#5f9f9f term=bold ctermfg=3 ctermbg=2 
highlight Visual      guifg=yellow guibg=blue term=reverse cterm=bold ctermfg=6 ctermbg=5 

highlight Pmenu		guifg=black guibg=#5f9f9f
highlight PmenuSel	guifg=wheat guibg=dodgerblue
highlight PmenuSbar	guifg=yellow guibg=red
highlight PmenuThumb	guifg=green guibg=orange

highlight MyTagListTagName  guifg=yellow term=underline ctermfg=3 
highlight MyTagListTagScope guifg=green term=underline cterm=bold ctermfg=3 



