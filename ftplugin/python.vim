setlocal shiftwidth=2
setlocal tabstop=2
set softtabstop=2

:imap <buffer> <C-z> import pdb; pdb.set_trace()<C-O>
