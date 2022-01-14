"USED with leader:

" ABBREVIATIONS "
"ab se side-eff:
"ab req @requires
" END of ABBREVIATIONS "

let mapleader = "\<Space>"

" Expand region pligun bind o v
"vmap v <Plug>(expand_region_expand)
"vnoremap v <Esc>
"vmap <C-v> <Plug>(expand_region_shrink)
"noremap V v$

" p in visual mode doesn't replace yank register
" so we can past same content over multiple instances
" actually its ap, you need to use substitute for this
"function! RestoreRegister()
  "let @" = s:restore_reg
  "return ''
"endfunction
"function! s:Repl()
  "let s:restore_reg = @"
  "return "p@=RestoreRegister()\<cr>"
"endfunction
"vmap <silent> <expr> p <sid>Repl()

" Visual paste put content to " (default register)
" effectively changing next p. We don't want that.
"vnoremap p "_dp
"vnoremap P "_dP

" use the same reg mapping for visual mode
vnoremap <c-r>0 "0p
vnoremap <c-r>+ "+p

" expand to current working directory
" cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
"
"map <leader>es :sp %%
"map <leader>ev :vsp %%
"map <leader>et :tabe %%

"map <silent> <leader>ee :Explore<CR>

" format the entire file
"nnoremap <leader>fef :normal! gg=G``<CR>

" cd to the directory containing the file in the buffer
cabbrev cd cd %:h
cabbrev lcd lcd %:h

" set text wrapping toggles
"nmap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

" Clean whiespace
map <silent> <leader><F2> :StripWhitespace<CR>
" Toggle hlsearch with <leader>hs
nmap <leader><F3> :set hlsearch! hlsearch?<CR>
" Spell check
nnoremap <leader><F4> :setlocal spell!<cr>
" Synstax highlight debug
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>



" Adjust viewports to the same size
"map <Leader>= <C-w>=

" Maximize split
" nnoremap <silent> <Leader>+ :exe "vertical resize " . (200 * 2/3)<CR>

" buffer navigation like firefox
"nnoremap <A-j>           : bprevious<CR>
"nnoremap <A-k>           : bnext<CR>
"nnoremap <C-t>           : enew<CR>

"inoremap <A-j>   <Esc>  : bprevious<CR>i
"inoremap <A-k>   <Esc>  : bnext<CR>i
"inoremap <C-t>   <Esc>  : enew<CR>

if has('mac')

  " nnoremap <D-j>           : bprevious<CR>
  " nnoremap <D-k>           : bnext<CR>

  " inoremap <D-j>   <Esc>  : bprevious<CR>i
  " inoremap <D-k>   <Esc>  : bnext<CR>i

endif

"map  <A-0> 0gt
"imap <A-0> <Esc>0gt
"map  <A-1> 1gt
"imap <A-1> <Esc>1gt
"map  <A-2> 2gt
"imap <A-2> <Esc>2gt
"map  <A-3> 3gt
"imap <A-3> <Esc>3gt
"map  <A-4> 4gt
"imap <A-4> <Esc>4gt
"map  <A-5> 5gt
"imap <A-5> <Esc>5gt
"map  <A-6> 6gt
"imap <A-6> <Esc>6gt
"map  <A-7> 7gt
"imap <A-7> <Esc>7gt
"map  <A-8> 8gt
"imap <A-8> <Esc>8gt
"map  <A-9> 9gt
"imap <A-9> <Esc>9gt

"makes K split lines (the opposite of J)
"nnoremap K i<cr><esc>k$

" Move tabs with alt + left|right
"nnoremap <silent> <C-H> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <C-L> :execute 'silent! tabmove ' . tabpagenr()<CR>
"nnoremap <silent> <C-J> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <C-K> :execute 'silent! tabmove ' . tabpagenr()<CR>
" move up/down
nnoremap <C-K> <C-Y>
nnoremap <C-J> <C-E>

"map <silent> <A-n> :Lexplore<CR>

"nmap <Leader>a= :Tabularize /=<CR>
"vmap <Leader>a= :Tabularize /=<CR>
"nmap <Leader>a: :Tabularize /:\zs<CR>
"vmap <Leader>a: :Tabularize /:\zs<CR>
"nmap <Leader>a, :Tabularize /,\zs<CR>
"vmap <Leader>a, :Tabularize /,\zs<CR>

" Wrapped movings
map j gj
map k gk

" Moving between windows
"map <leader>h <C-W>h
"map <leader>j <C-W>j
"map <leader>k <C-W>k
"map <leader>l <C-W>l
"map <leader>H <c-w>H
"map <leader>J <c-w>J
"map <leader>K <c-w>K
"map <leader>L <c-w>L

"map <leader>r <c-w>r
"map <leader>R <c-w>R

"map <leader>2h <C-W>2h
"map <leader>2j <C-W>2j
"map <leader>2k <C-W>2k
"map <leader>2l <C-W>2l

" Close window
"map <leader>q <c-w>q
"nmap <leader>q :bp <BAR> bd #<CR>
" USE ZQ
"map <silent> <leader>qq :q!<CR>

" Easy movings
"map <Leader><Leader>l <Plug>(easymotion-lineforward)
"map <Leader><Leader>h <Plug>(easymotion-linebackward)
"map <Leader><Leader>a <Plug>(easymotion-jumptoanywhere)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
"map <leader><leader>/ <Plug>(incsearch-easymotion-/)
"map <leader><leader>? <Plug>(incsearch-easymotion-?)
"map <leader><leader>; <Plug>(easymotion-repeat)

" easy motion 2 char search
"map <leader>f <Plug>Sneak_s
"map <leader>F <Plug>Sneak_S
" easy motion s search
"noremap f <Plug>(easymotion-overwin-f2)
"xmap f <Plug>(easymotion-overwin-f2)
"omap f <Plug>(easymotion-overwin-f2)
"map f <Plug>(easymotion-overwin-f2)
"nnoremap f <Plug>(easymotion-overwin-f)
"xnoremap f <Plug>(easymotion-bd-f)
"onoremap f <Plug>(easymotion-bd-f)
"map F <Plug>(easymotion-overwin-f2)
"xmap F <Plug>(easymotion-overwin-f2)
"omap F <Plug>(easymotion-overwin-f2)
map  f <Plug>(easymotion-f)
map  F <Plug>(easymotion-F)
"nmap f <Plug>(easymotion-overwin-f)

" Past from yank buffer
"imap <C-R><C-R> <C-R>"

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" fugitive
"nnoremap <silent> <leader>ga :Gwrite<CR>
"nnoremap <silent> <leader>gs :Gstatus<CR>
"nnoremap <silent> <leader>gd :Gdiff<CR>
"nnoremap <silent> <leader>gg :Gcommit<CR>
cabbrev ga Gwrite
cabbrev gs Gstatus
cabbrev gd Gdiff
cabbrev gg Gcommit
"nnoremap <silent> <leader>gp :Gpush<CR>
"nnoremap <leader>gr :Ggr 
"nnoremap gr "zyiw:Ggr <C-r>z
"nnoremap gf :Ggr <C-r>%
"nnoremap <silent> <leader>gb :Gblame<CR>
"nnoremap <silent> <leader>gl :Glog<CR>
"nnoremap <silent> <leader>gp :Git push<CR>
"nnoremap <silent> <leader>gr :Gread<CR>
"nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
"nnoremap <silent> <leader>gi :Git add -p %<CR>
"nnoremap <silent> <leader>gc :SignifyToggle<CR>

" Relad syntax
"noremap <F11> <Esc>:syntax sync fromstart<CR>
"inoremap <F11> <C-o>:syntax sync fromstart<CR>

" Remap ` to '
" nnoremap ' `
" nnoremap ` '

"Yanks mappings
"nnoremap <leader>y "kyiw
"nnoremap <leader>p ciw<C-R>k<Esc>b
"nnoremap <leader>p "_diwhp
"nmap <leader>P <Plug>yankstack_substitute_older_paste
"nmap <leader>P "0P

"nmap <leader>w yiw
" nmap gp "zviwp
"nmap <leader>c ciw

"nmap <leader>c ciw


" fold
" toggle current fold
"nnoremap <leader>ff za
" close all
"nnoremap <leader>fc zM
" delete current fold
"nnoremap <leader>fd zD
" close current fold
"nnoremap <leader>fc zc
" open current fold
"nnoremap <leader>fo zo
" toggle current fold recursively
"nnoremap <leader>fF zA
" close current fold recursively
"nnoremap <leader>fC zC
" open all recursively
"nnoremap <leader>fo zR

"dont yank
"vnoremap <leader>d "_d

"Registers cycle
"noremap <Leader>s :let @x=@" \| let @"=@a \| let @a=@b \| let @b=@x<CR>

" JsDoc
"nnoremap <silent> <leader>JS :JsDoc<cr>
"nnoremap <silent> <leader>js <Plug>(jsdoc)

map <silent> <leader>w <Plug>CamelCaseMotion_w
map <silent> <leader>b <Plug>CamelCaseMotion_b
map <silent> <leader>e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

" last edit poistion
" have [c for this
"nnoremap <leader>z `^

" Make 0 go to the first character rather than the beginning
" of the line. When we're programming, we're almost always
" interested in working with text rather than empty space. If
" you want the traditional beginning of line, use ^
nnoremap 0 ^
nnoremap ^ 0

"When typing a string, your quotes auto complete. Move past the quote
"while still in insert mode by hitting Ctrl-a. Example:
"
" type 'foo<c-a>
"
" the first quote will autoclose so you'll get 'foo' and hitting <c-a> will
" put the cursor right after the quote
"inoremap <C-a> <esc>la

"(v)im (r)eload only in .vimrc
"nmap <silent> <leader>vr :so %<CR>

" close quick window
"nnoremap <silent> <leader>qc :cclose<CR>
cabbrev cc :cclose

" Prev/Next change
" overwrites default mapping
nnoremap [c g;
nnoremap ]c g,

" setting folding level
noremap [f zm
noremap ]f zr

" go to past locations, to be consistent with unimpared
nnoremap [p `[
nnoremap ]p `]

"nnoremap [p <Plug>yankstack_substitute_older_paste
"nnoremap ]p <Plug>yankstack_substitute_newer_paste

"nnoremap <leader>ls :ls<CR>

" Easy bindings for its various modes
"nmap <c-p> :CtrlPMRU<cr>
"nmap <c-P> :CtrlPBuffer<cr>
"nmap <leader>p :CtrlPMRU<cr>

"map /  <Plug>(incsearch-forward)

" RepMo

" map a motion and its reverse motion:
" noremap <expr> h repmo#Key('h', 'l')|sunmap h
" noremap <expr> l repmo#Key('l', 'h')|sunmap l

" if you like `:noremap j gj', you can keep that:
" noremap <expr> j repmo#Key('gj', 'gk')|sunmap j
" noremap <expr> k repmo#Key('gk', 'gj')|sunmap k

" repeat the last [count]motion or the last zap-key:
" noremap <expr> ; repmo#LastKey(';')|sunmap ;
" noremap <expr> , repmo#LastRevKey(',')|sunmap ,

" add these mappings when repeating with `;' or `,':
" noremap <expr> f repmo#ZapKey('f')|sunmap f
" noremap <expr> F repmo#ZapKey('F')|sunmap F
" noremap <expr> t repmo#ZapKey('t')|sunmap t
" noremap <expr> T repmo#ZapKey('T')|sunmap T

" End of RepMo

" Go to next close fold
"nnoremap <silent> zj :call NextClosedFold('j')<cr>
"nnoremap <silent> zk :call NextClosedFold('k')<cr>
"
"function! NextClosedFold(dir)
    "let cmd = 'norm!z' . a:dir
    "let view = winsaveview()
    "let [l0, l, open] = [0, view.lnum, 1]
    "while l != l0 && open
        "exe cmd
        "let [l0, l] = [l, line('.')]
        "let open = foldclosed(l) < 0
    "endwhile
    "if open
        "call winrestview(view)
    "endif
"endfunction

let g:ctrlp_prompt_mappings = {
  \ 'ToggleType(1)':        ['<c-f>', '<a-k>'],
  \ 'ToggleType(-1)':       ['<c-b>', '<a-j>'],
  \ }

" Use Q to intelligently close a window 
" (if there are multiple windows into the same buffer)
" or kill the buffer entirely if it's the last window looking into that buffer
function! CloseWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction

nnoremap <silent> <leader>q :call CloseWindowOrKillBuffer()<CR>

"inoremap kj <esc>
"inoremap <esc> <nop>

" delete variable iv as text object
" wont work as vav
"onoremap iv :<c-u>execute "normal! ?var\r:nohlsearch\rv/;\rl"<CR>

" Smooth scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" open vertivcal netrw
"nnoremap <silent> <leader>ve :Vex<cr>
"cabbrev ve Vex
"cabbrev e :e .

" vim MARKDOWN

" open Toc
"autocmd Filetype markdown nnoremap <silent> <leader>j :Toc<cr>

" select from TOC and quit
autocmd FileType qf nnoremap <Space> <cr>:only<cr>

" toggle checkbox in markdown
augroup MappyTime
  autocmd!
  autocmd FileType markdown nnoremap <buffer> <silent> <leader>t :call winrestview(<SID>toggle('^\s*-\s*\[\zs.\ze\]', {' ': '.', '.': 'x', 'x': ' '}))<cr>
augroup END

function s:toggle(pattern, dict, ...)
  let view = winsaveview()
  execute 'keeppatterns s/' . a:pattern . '/\=get(a:dict, submatch(0), a:0 ? a:1 : " ")/e'
  return view
endfunction

" Buffers as in unimpaired, consistent with airline
nnoremap [b           : bprevious<CR>
nnoremap ]b           : bnext<CR>

" Open fzf
"nnoremap <leader><c-p> :Files<cr>
"inoremap <esc><leader><c-p> :Files<cr>
" history has files from other directories
nnoremap <c-p> :History<cr>

" Safe paste from system clipboard.
" See https://vim.fandom.com/wiki/Pasting_registers
inoremap <C-R>+ <C-R><C-R>+

" rg binding
nnoremap gr yiW :Rg <c-r>0<CR>

" Y consistent with D
"nnoremap Y y$

" disable ex
map Q <nop>

" short for Files
"command Fl Files
cabbrev fl Files

" abrev for Rg
cabbrev rg Rg
cabbrev gr Rg

" quick note
cabbrev nt Note

" Search next curly brace
noremap ]{ /{<cr>
noremap [} ?}<cr>
noremap ]} /}<cr>
noremap [{ ?{<cr>
