"" CUSTOM CONFIGS

colorscheme jellybeans

set guifont=Ubuntu\ Mono\ Bold\ 14
" set lines=50
" set columns=200

set lines=999 columns=999

set guioptions-=T
set guitablabel=%t

set cursorline

set ve=all

set showcmd

if has('mac')

  set guifont=Menlo\ Regular:h14

  set transparency=10

else

  if filereadable(expand("~/.vim/rc_files/mswin.vim"))
    source ~/.vim/rc_files/mswin.vim
    behave mswin
  endif

endif
