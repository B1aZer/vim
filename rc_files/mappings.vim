let mapleader = "\<Space>"

" Expand region pligun bind o v
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" vp doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()

" expand to current working directory
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>e :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

map <silent> <leader>ee :Explore<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" cd to the directory containing the file in the buffer
nmap <leader>cd :lcd %:h<CR>

" set text wrapping toggles
nmap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

" Toggle hlsearch with <leader>hs
nmap <leader><F3> :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Maximize split
nnoremap <silent> <Leader>+ :exe "vertical resize " . (200 * 2/3)<CR>

" tab navigation like firefox
nnoremap <A-j>           : tabprevious<CR>
nnoremap <A-k>           : tabnext<CR>
nnoremap <C-t>           : tabnew<CR>

inoremap <A-j>   <Esc>  : tabprevious<CR>i
inoremap <A-k>   <Esc>  : tabnext<CR>i
inoremap <C-t>   <Esc>  : tabnew<CR>

map  <A-0> 0gt
imap <A-0> <Esc>0gt
map  <A-1> 1gt
imap <A-1> <Esc>1gt
map  <A-2> 2gt
imap <A-2> <Esc>2gt
map  <A-3> 3gt
imap <A-3> <Esc>3gt
map  <A-4> 4gt
imap <A-4> <Esc>4gt
map  <A-5> 5gt
imap <A-5> <Esc>5gt
map  <A-6> 6gt
imap <A-6> <Esc>6gt
map  <A-7> 7gt
imap <A-7> <Esc>7gt
map  <A-8> 8gt
imap <A-8> <Esc>8gt
map  <A-9> 9gt
imap <A-9> <Esc>9gt

"makes K split lines (the opposite of J)
nnoremap K i<cr><esc>k$

" Move tabs with alt + left|right
nnoremap <silent> <C-H> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-L> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <silent> <C-J> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-K> :execute 'silent! tabmove ' . tabpagenr()<CR>

map <silent> <A-n> :Lexplore<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

" Clean whiespace
map <silent> <leader><F2> :StripWhitespace<CR>

" Wrapped movings
map j gj
map k gk

" Moving between windows
map <leader>h <C-W>h
map <leader>j <C-W>j
map <leader>k <C-W>k
map <leader>l <C-W>l
map <leader>H <c-w>H
map <leader>J <c-w>J
map <leader>K <c-w>K
map <leader>L <c-w>L

map <leader>r <c-w>r
map <leader>R <c-w>R

map <leader>2h <C-W>2h
map <leader>2j <C-W>2j
map <leader>2k <C-W>2k
map <leader>2l <C-W>2l

" Close window
map <leader>q <c-w>q
map <silent> <leader>qq :q!<CR>

" Easy movings
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)

" Past from yank buffer
imap <C-R><C-R> <C-R>"

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
"nnoremap <silent> <leader>gc :Gcommit<CR>
"nnoremap <silent> <leader>gb :Gblame<CR>
"nnoremap <silent> <leader>gl :Glog<CR>
"nnoremap <silent> <leader>gp :Git push<CR>
"nnoremap <silent> <leader>gr :Gread<CR>
"nnoremap <silent> <leader>gw :Gwrite<CR>
"nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
"nnoremap <silent> <leader>gi :Git add -p %<CR>
"nnoremap <silent> <leader>gg :SignifyToggle<CR>

" Relad syntax
noremap <F11> <Esc>:syntax sync fromstart<CR>
inoremap <F11> <C-o>:syntax sync fromstart<CR>

" Gpto beggining
nmap <leader>0 ^

" Remap ` to '
" nnoremap ' `
" nnoremap ` '

"Yanks mappings
"nmap <leader>p <Plug>yankstack_substitute_older_paste
"nmap <leader>P <Plug>yankstack_substitute_newer_paste

nmap <leader>y yiw
" nmap gp "zviwp

" Spell check
nnoremap <leader><F4> :setlocal spell!<cr>
