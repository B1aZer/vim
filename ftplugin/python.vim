setlocal shiftwidth=4
setlocal tabstop=4
set softtabstop=4

:imap <buffer> <C-z> import pdb; pdb.set_trace()<C-O>
