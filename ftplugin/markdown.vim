nmap <C-l> i<C-R>=strftime("%Y%m%d%H%M%S")<CR><Esc>
imap <C-l> <C-R>=strftime("%Y%m%d%H%M%S")<CR>

if &background != 'dark'
  hi mkdCheckBoxCompete ctermfg=255
  hi mkdStatus ctermfg=140
else
  hi mkdCheckBoxCompete ctermfg=236
  hi mkdStatus ctermfg=134
endif
" TODO: VERY SLOW!
call matchadd('mkdCheckBoxCompete', '- \[x\].*')
call matchadd('mkdStatus', '\(?:status\|due\):')

set nosmartindent
set noautoindent
set textwidth=90
