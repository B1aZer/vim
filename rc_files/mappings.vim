let mapleader = "\<Space>"

nnoremap <space> za

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
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>

" set text wrapping toggles
" TODO: what is this ?
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" Toggle hlsearch with <leader>hs
nmap <leader>hl :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Maximize split
nnoremap <silent> <Leader>- :exe "vertical resize " . (200 * 3/2)<CR>

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

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <A-n> :call ToggleVExplorer()<CR>

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Clean whiespace
map <silent> <leader><F2> :StripWhitespace<CR>
