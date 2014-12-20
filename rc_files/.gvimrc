"" CUSTOM CONFIGS

colorscheme jellybeans

set guifont=Ubuntu\ Mono\ Bold\ 14
" set lines=50
" set columns=200

set lines=999 columns=999

if filereadable(expand("~/.vim/rc_files/mswin.vim"))
  source ~/.vim/rc_files/mswin.vim
endif
behave mswin

set guioptions-=T
set guitablabel=%t

set cursorline

set ve=all

set showcmd
