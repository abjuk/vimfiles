set nocompatible
" Clear all autocommands
autocmd!	
behave xterm
"so $VIMRUNTIME/mswin.vim

colorscheme abjuk

let mapleader = "q"

"""""""""""""""""""""""""""""""""""""""""
"  Global Settings
"""""""""""""""""""""""""""""""""""""""""
set autoindent
set autoread
set autowrite
set backspace=2
set backup
set backupext=.bak
set cindent
set clipboard=unnamed
set cmdheight=1
set completeopt=menu,menuone,longest
set foldlevel=11
set foldmethod=syntax
set formatoptions+=1
set gdefault
set guioptions-=T
set incsearch
set ignorecase
set laststatus=2
set linebreak
set listchars=tab:>-,eol:$
set mousehide
set mousemodel=popup_setpos
set nohlsearch
set number
set omnifunc=ClangComplete
"set printerfont=Terminal:h9
set relativenumber
set report=0
set scrolloff=4
set selectmode=mouse
set shiftround
set shiftwidth=4
set shortmess+=r
set showbreak=-->
set showcmd
set showfulltag
set showmatch
set showmode
set sidescroll=8
set sidescrolloff=4
set smartcase
set softtabstop=4
"set statusline=%<%f%y%h%m%r[%{SSGetLockStatus()}]%=%-14(%l,%c%V%)\ %P
set statusline=%<%f%y%h%m%r%=%(%l\ /\ %L%)\ 
set tabstop=4
" steps up the dir tree til it finds a .tags file.
set tags=./tags,tags,~/rocketman2/.tags
"set textwidth=78
set undofile
set wildmenu

"Always show filetypes in syntax menu
let do_syntax_sel_menu = 1
"""""""""""""""""""""""""""""""""""""""""
"  OS Specific
"""""""""""""""""""""""""""""""""""""""""
if has('win32')
	set backupdir=$HOME/vimfiles/backup,.
	set directory=$HOME/vimfiles/temp//,.
	set undodir=$HOME/vimfiles/undo,.
else
	set backupdir=~/.vim/backup,.
	set directory=~/.vim/temp//,.
	set undodir=~/.vim/undo,.
endif

if has('win32')
	set guifont=Lucida_Console:h12
elseif has('mac')
	set guifont=Menlo:h14
end

filetype off

"""""""""""""""""""""""""""""""""""""""""
"  Plugins
"""""""""""""""""""""""""""""""""""""""""

" Vundle
if has('win32')
	set runtimepath+=$HOME/vimfiles/bundle/vundle/
else
	set runtimepath+=~/.vim/bundle/vundle/
endif

call vundle#rc()
Bundle 'gmarik/vundle'

" Vim-scripts
Bundle 'a.vim'

" YouCompleteMe
Bundle 'Valloric/YouCompleteMe'
let g:ycm_confirm_extra_conf = 1
let g:ycm_collect_identifiers_from_tags_files = 1

" NERDCommenter
Bundle 'scrooloose/nerdcommenter'

" NERDTree
Bundle 'scrooloose/nerdtree'

" SnipMate
Bundle 'msanders/snipmate.vim'
let g:snips_author = 'Kris Pivin'

" CtrlP
Bundle 'kien/ctrlp.vim'
"let g:ctrlp_by_filename = 1
"let g:ctrlp_follow_symlinks = 1
"let g:ctrlp_root_markers = ['build.xml']
let g:ctrlp_use_caching = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:24,results:24'
set wildignore+=*.o,*.obj,*.bin,*.ani,*.swp,*.bak,*.pch,*.apk*
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
set wildignore+=*/assets/*,*/undo/*,*/Content*/*
"let g:ctrlp_custom_ignore = { 'dir': '\vassets$', 'file': '\v\.(exe|so|dll|bin)$', }
"let g:ctrlp_custom_ignore = '\v\.(swp|bak)$'
"let g:ctrlp_custom_ignore = '\v\~$|\.(o|obj|swp|bak|wav|mp3|ogg|ani|pch|apk*)$|(^|[/\\])\.(hg|git|bzr|svn)($|[/\\])'



" TagList
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Show_Menu = 1
"let Tlist_Use_Right_Window = 1

" Source Safe plugin
"let $SSDIR="C:\\Program Files\\Microsoft Visual Studio\\VSS"
"let $SSDIR="//zeus/DSI_VSS_2005_NET/"
"let ssLocalTree="c:._Src2"
"let ssMenuPath=""
"let ssUserName="kpivin"

" Omnicomplete 
"let OmniCpp_DefaultNamespaces = ["dslib", "game"]

" Clang Complete
"let g:clang_auto_select = 0
"let g:clang_complete_auto = 0
"let g:clang_use_library = 1
"let g:clang_complete_copen = 1
"let g:clang_complete_patterns = 0
"let g:clang_user_options='|| exit 0'

" Supertab
"let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabClosePreviewOnPopupClose = 1

""""""""""""""""""""""""""""""""""""""""""
"  Key Mappings
""""""""""""""""""""""""""""""""""""""""""

" Arrow keys up and down by display lines instead of file lines
nnoremap <down> gj
inoremap <down> <Esc>gja
nnoremap <up> gk
inoremap <up> <Esc>gka

" Map Q to q so q can be <leader>
nnoremap Q q
" In case we time out, don't record a macro
nnoremap q <nop>

" Make Y yank to end of line, like C and D
nnoremap Y y$

" Use the spacebar to toggle the current fold in normal mode
nnoremap <Space> za

" Puts spaces around all operators on a line.
" Gets confused by paren-bangs.
nnoremap <F5> :s/\(\w\+]*)*\)\([*/%+\-<>!&\^<Bar>=][&<Bar><]\==\=\)\((*!*"*\-\=\w\+\)/\1<Space>\2<Space>\3/g<CR>
" Ditto for all lines in the file.
nnoremap <S-F5> :g!/"/s/\(\w\+]*)*\)\([*/%+\-<>!&\^<Bar>=][&<Bar><]\==\=\)\((*!*"*\-\=\w\+\)/\1<Space>\2<Space>\3/g<CR>

" Put spaces after semicolons where necessary
nnoremap <F6> :s/;\(\k\)/;<Space>\1/g<CR>
" Ditto for entire file
nnoremap <S-F6> :%s/;\(\k\)/;<Space>\1/g<CR>

" SVN diff on current file
nnoremap <F8> :set columns=188<CR>:VCSVimDiff<CR>
nnoremap <S-F8> :set columns=110<CR>

" Run ctags
nnoremap <F4> :!~/bin/dirtags .<CR>

" Save files in unix format
"nnoremap <F4> :w ++ff=unix<CR>

" ^] in insert mode completes tag
inoremap  
" ^L in insert mode completes line
inoremap  

" Move up and down between diffs a la Cornerstone
nnoremap <D-Up> [c
nnoremap <D-Down> ]c

nnoremap <leader>v :source $MYVIMRC<CR>
nnoremap <leader>bi :BundleInstall<CR>

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
augroup Coding
	au!
	" Autosave any time we lose focus or leave the buffer
	au FocusLost,BufLeave * update
	" C Coding, 1P standards
	au FileType cpp,c,objc,objcpp,actionscript setlocal ts=4 sts=4 sw=4 expandtab
	au FileType java setlocal ts=4 sts=4 sw=4 expandtab
	" Perl Coding
	au FileType perl set ts=4 cindent
	au FileType perl highlight Identifier  term=underline ctermfg=3 guifg=yellow 
augroup END

syntax on

