" ~/.vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.7 on 27 Ноябрь 2014 at 15:21:37.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLt
silent! set guifont=Ubuntu\ Mono\ Bold\ 14
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'jellybeans' | colorscheme jellybeans | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +7 ~/.vimrc
badd +1 /bin/bunzip2
badd +1 ~/Sites/github/yaltashop
badd +13 ~/Sites/github/shop/cart/static/cart/css/style.css
badd +1 ~/Sites/github/yaltashop/app/models/NetrwTreeListing\ 3
badd +12 ~/Sites/github/yaltashop/app/controllers/products.server.controller.js
badd +1 ~/Sites/github/yaltashop/public/config.js
badd +1 ~/Sites/github/yaltashop/app/controllers/NetrwTreeListing\ 8
badd +1 ~/Sites/github/yaltashop/public/NetrwTreeListing\ 9
badd +3 ~/.gvimrc
badd +30 ~/Sites/github/yaltashop/public/modules/products/controllers/products.client.controller.js
badd +11 ~/Sites/github/yaltashop/public/modules/products/config/products.client.config.js
badd +9 ~/Sites/github/yaltashop/app/routes/core.server.routes.js
badd +1 ~/Sites/github/yaltashop/app/routes/products.server.routes.js
badd +1 ~/Sites/github/yaltashop/app/routes/upload.server.controller.js
badd +5 ~/Sites/github/yaltashop/app/controllers/core.server.controller.js
badd +18 ~/Sites/github/yaltashop/config/express.js
badd +1 ~/Sites/github/yaltashop/app/routes/NetrwTreeListing\ 4
badd +1 ~/Sites/github/yaltashop/public/modules/products/views/temp
badd +22 ~/.vimjanus/janus/vim/vimrc
badd +162 ~/.vimjanus/janus/vim/core/before/plugin/mappings.vim
badd +70 ~/.vimjanus/janus/vim/core/before/plugin/janus.vim
badd +1 ~/Sites/github/yaltashop/public/modules/products/views/NetrwTreeListing\ 2
badd +1 ~/.vimjanus/janus/vim/gvimrc
badd +24 ~/Sites/github/yaltashop/server.js
badd +1 ~/Sites/github/yaltashop/bower.json
badd +1 ~/Sites/github/yaltashop/app/controllers/users/users.authorization.server.controller.js
badd +1 ~/Sites/github/yaltashop/app/controllers/users/users.password.server.controller.js
badd +1 ~/Sites/github/yaltashop/app/routes
badd +5 ~/.vim/ftplugin/javascript.vim
badd +7 ~/Sites/github/yaltashop/app/models/product.server.model.js
badd +65 ~/Sites/github/Company_Page/app/scripts/main.js
badd +1 ~/Sites/github/dotaftw/__init__.py
badd +3 ~/Sites/github/dotaftw/shopster/views.py
badd +8 ~/Sites/github/dotaftw/items/views.py
badd +106 ~/.vim/rc_files/mappings.vim
badd +4 ~/Sites/github/shop-mean/karma.conf.js
badd +8 ~/Sites/github/dotaftw/urls.py
badd +1 ~/1
badd +1 ~/.vim/bundle/vim-snippets/UltiSnips/javascript.snippets
badd +5 ~/.vim/bundle/vim-snippets/UltiSnips/python.snippets
args .vim/bundle/vim-snippets/UltiSnips/python.snippets
edit ~/.gvimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/Sites/github
tabedit ~/.vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 51 - ((15 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 04|
lcd ~/Sites/github
tabedit ~/.vim/rc_files/mappings.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 019|
lcd ~/Sites/github
tabedit ~/Sites/github/yaltashop/public/modules/products/config/products.client.config.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 03|
lcd ~/Sites/github
tabedit ~/.vim/bundle/vim-snippets/UltiSnips/javascript.snippets
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=getline(v:lnum)!~'^\\t\\|^$'?'>1':1
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
12
silent! normal! zo
18
silent! normal! zo
32
silent! normal! zo
let s:l = 11 - ((10 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 018|
lcd ~/Sites/github
tabedit ~/.vim/bundle/vim-snippets/UltiSnips/python.snippets
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=expr
setlocal fde=getline(v:lnum)!~'^\\t\\|^$'?'>1':1
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
silent! normal! zo
12
silent! normal! zo
let s:l = 5 - ((4 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
lcd ~/Sites/github
tabnext 5
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 5
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
