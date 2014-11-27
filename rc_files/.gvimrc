"" CUSTOM CONFIGS

colorscheme jellybeans

set guifont=Ubuntu\ Mono\ Bold\ 14
set lines=50
set columns=200

source $VIMRUNTIME/mswin.vim
behave mswin

set guioptions-=T
set guitablabel=%t

set cursorline

set ve=all

set showcmd

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Default to tree mode
let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
set autochdir
