set nocompatible
" Clear all autocommands
autocmd!	
behave xterm
"so $VIMRUNTIME/mswin.vim


"""""""""""""""""""""""""""""""""""""""""
"  Global Settings
"""""""""""""""""""""""""""""""""""""""""
set autoindent
set autoread
set autowrite
set background=dark
set backspace=2
set backup
set backupdir=.\\backup,d:\\temp\\vim,d:\\temp
set backupext=.bak
set cindent
set clipboard=unnamed
set cmdheight=1
if version >= 600
    set foldlevel=11
    set foldmethod=syntax
    "set foldtext=/\\(.*\\)/>\\d\ \\f\ lines...\ \ \ 
endif
set formatoptions+=1
set guifont=Lucida_Console:h11
set ignorecase
set laststatus=2
set lines=54
set mousehide
set mousemodel=popup_setpos
set nohlsearch
"set printerfont=Terminal:h9
set report=0
set scrolloff=4
set selectmode=mouse
set shiftround
set shiftwidth=4
set shortmess+=r
set showbreak=>>>
set showcmd
set showfulltag
set showmatch
set showmode
set sidescroll=8
set sidescrolloff=4
set smartcase
"set statusline=%<%f%y%h%m%r[%{SSGetLockStatus()}]%=%-14(%l,%c%V%)\ %P
set statusline=%<%f%y%h%m%r%=%-14(%l,%c%V%)\ %P
set tabstop=8
set textwidth=78

" TagList Options
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_Menu = 1
let Tlist_Use_Right_Window = 1

" Source Safe plugin
"let $SSDIR="C:\\Program Files\\Microsoft Visual Studio\\VSS"
let $SSDIR="//zeus/DSI_VSS_2005_NET/"
let ssLocalTree="c:._Src2"
let ssMenuPath=""
let ssUserName="kpivin"

""""""""""""""""""""""""""""""""""""""""""
"  Key Mappings
""""""""""""""""""""""""""""""""""""""""""

" Puts spaces around all operators on a line.
" Gets confused by paren-bangs.
nmap <F5> :s/\(\w\+]*)*\)\([*/%+\-<>!&\^<Bar>=][&<Bar><]\==\=\)\((*!*"*\-\=\w\+\)/\1<Space>\2<Space>\3/g<CR>
" Ditto for all lines in the file.
nmap <S-F5> :g!/"/s/\(\w\+]*)*\)\([*/%+\-<>!&\^<Bar>=][&<Bar><]\==\=\)\((*!*"*\-\=\w\+\)/\1<Space>\2<Space>\3/g<CR>

" Put spaces after semicolons where necessary
nmap <F6> :s/;\(\k\)/;<Space>\1/g<CR>
" Ditto for entire file
nmap <S-F6> :%s/;\(\k\)/;<Space>\1/g<CR>

" Toggle Tag List
nmap <F8> :TlistToggle<CR>

" Run ctags
nmap <F9> :!ctags -R --totals .<CR>

" F9 brings up word under cursor in MSDN help.
nmap <F4> *#yw:! start keyhh -\#alink <C-R>"c:\Program Files\Microsoft Visual Studio\MSDN\2000JAN\1033\MSDN000.COL<CR>

" ^] in insert mode completes tag
inoremap  
" ^L in insert mode completes line
inoremap  

""""""""""""""""""""""""""""""""""""""""""
"  Filetypes
""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
"
" vim -b : edit tiff files using xxd-format!
augroup Binary
    au!
    au BufReadPre  *.tif let &bin=1
    au BufReadPost *.tif if &bin | %!xxd
    au BufReadPost *.tif set ft=xxd | endif
    au BufWritePre *.tif if &bin | %!xxd -r
    au BufWritePre *.tif endif
    au BufWritePost *.tif if &bin | %!xxd
    au BufWritePost *.tif set nomod | endif
augroup END

" Hero Designer Files are XML
au BufNewFile,BufRead *.hdt,*.hdp,*.hdc set filetype=xml

""""""""""""""""""""""""""""""""""""""""""
"  Autocommands
""""""""""""""""""""""""""""""""""""""""""

" Refresh changed files
"au FileChangedShell * :e
" Base settings
"au BufRead * set ts=8 nocindent formatoptions=tcq
" C Coding
"au BufRead *.cpp,*.c,*.h set ts=4 formatoptions=croql cindent 
au FileType cpp,c source $VIM/MFCrc.vim
au FileType cpp,c au FocusLost * update
au FileType cpp,c au BufLeave * update
au FileType cpp,c set ts=4
" Perl Coding
au FileType perl set ts=4 cindent
au FileType perl highlight Identifier  term=underline ctermfg=3 guifg=yellow 

""""""""""""""""""""""""""""""""""""""""""
"  Highlighting
""""""""""""""""""""""""""""""""""""""""""
syntax on

" test
"------ this clears out the old colors before we begin
highlight Constant    NONE
highlight Delimiter   NONE
highlight Directory   NONE
highlight Error       NONE
highlight ErrorMsg    NONE
highlight Identifier  NONE
highlight LineNr      NONE
highlight ModeMsg     NONE
highlight MoreMsg     NONE
highlight Normal      NONE
highlight NonText     NONE
highlight PreProc     NONE
highlight Question    NONE
highlight Search      NONE
highlight Special     NONE
highlight SpecialKey  NONE
highlight Statement   NONE
highlight StatusLine  NONE
highlight Title       NONE
highlight Todo        NONE
highlight Type        NONE
highlight Visual      NONE
highlight WarningMsg  NONE

highlight Statement   guifg=dodgerblue term=bold ctermfg=2 
highlight Function    guifg=yellow term=underline ctermfg=3 
highlight Identifier  guifg=orange term=underline ctermfg=3 
highlight Constant    guifg=purple term=underline ctermfg=6 
highlight Comment     guifg=maroon term=bold ctermfg=5 ctermbg=0 
highlight Type        guifg=green term=underline cterm=bold ctermfg=3 
highlight Special     guifg=red term=bold ctermfg=5 
highlight Todo        guifg=purple term=bold ctermfg=red ctermbg=yellow 
highlight PreProc     guifg=forestgreen term=underline ctermfg=14 
highlight Normal      guifg=cyan guibg=black ctermfg=white ctermbg=black 

highlight Cursor      guifg=black guibg=Green 
highlight Delimiter   guifg=Red term=bold cterm=bold ctermfg=1 gui=bold 
highlight Directory   guifg=Blue term=bold ctermfg=DarkBlue 
highlight ErrorMsg    guifg=Red term=standout cterm=bold ctermfg=1 gui=bold 
highlight LineNr      guifg=Brown term=underline cterm=bold ctermfg=3 
highlight MoreMsg     guifg=Green term=bold cterm=bold ctermfg=2 gui=bold 
highlight NonText     guifg=green3 term=bold ctermfg=2 
highlight Question    guifg=Green term=standout cterm=bold ctermfg=2 gui=bold 
highlight Search      guifg=Red term=reverse ctermbg=2 
highlight SpecialKey  guifg=dodgerBlue term=bold ctermfg=DarkBlue 
highlight Title       guifg=Blue term=bold cterm=bold ctermfg=4 gui=bold 
highlight WarningMsg  guifg=Red term=standout cterm=bold ctermfg=1 ctermbg=4 
highlight ModeMsg     guifg=yellow2 guibg=red term=bold cterm=bold ctermfg=3 ctermbg=1 
highlight Folded      guifg=cyan term=reverse cterm=bold ctermfg=3 ctermbg=2 guibg=#3f3f3f 
highlight Error       guifg=red guibg=yellow term=standout cterm=bold ctermbg=1 ctermfg=1 gui=bold 
highlight StatusLine  guifg=wheat guibg=#2f4f4f term=reverse cterm=bold ctermfg=3 ctermbg=4 
highlight StatusLineNC guifg=#071f1f guibg=#5f9f9f term=bold ctermfg=3 ctermbg=2 
highlight Visual      guifg=yellow guibg=blue term=reverse cterm=bold ctermfg=6 ctermbg=5 

highlight MyTagListTagName  guifg=yellow term=underline ctermfg=3 
highlight MyTagListTagScope guifg=green term=underline cterm=bold ctermfg=3 

