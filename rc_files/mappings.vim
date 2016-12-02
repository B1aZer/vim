"USED with leader:
"e*
"f*
"c*
"w*
"a*
"h
"j
"k
"l
"r
"q
"g*
"0
"s

let mapleader = "\<Space>"

command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

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
"map <leader>e :e %%
"map <leader>es :sp %%
"map <leader>ev :vsp %%
"map <leader>et :tabe %%

"map <silent> <leader>ee :Explore<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" cd to the directory containing the file in the buffer
nmap <leader>cd :lcd %:h<CR>

" set text wrapping toggles
"nmap <silent> <leader>ww :set invwrap<CR>:set wrap?<CR>

" Toggle hlsearch with <leader>hs
nmap <leader><F3> :set hlsearch! hlsearch?<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Maximize split
nnoremap <silent> <Leader>+ :exe "vertical resize " . (200 * 2/3)<CR>

" tab navigation like firefox
nnoremap <A-j>           : bprevious<CR>
nnoremap <A-k>           : bnext<CR>
nnoremap <C-t>           : enew<CR>

inoremap <A-j>   <Esc>  : bprevious<CR>i
inoremap <A-k>   <Esc>  : bnext<CR>i
inoremap <C-t>   <Esc>  : enew<CR>

if has('mac')

  nnoremap <D-j>           : bprevious<CR>
  nnoremap <D-k>           : bnext<CR>

  inoremap <D-j>   <Esc>  : bprevious<CR>i
  inoremap <D-k>   <Esc>  : bnext<CR>i

endif

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
"nnoremap <silent> <C-H> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <C-L> :execute 'silent! tabmove ' . tabpagenr()<CR>
"nnoremap <silent> <C-J> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
"nnoremap <silent> <C-K> :execute 'silent! tabmove ' . tabpagenr()<CR>
nnoremap <C-K> <C-Y>
nnoremap <C-J> <C-E>

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
"map <leader>q <c-w>q
nmap <leader>q :bp <BAR> bd #<CR>
map <silent> <leader>qq :q!<CR>

" Easy movings
map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>h <Plug>(easymotion-linebackward)
map <leader><leader>/ <Plug>(incsearch-easymotion-/)
map <leader><leader>? <Plug>(incsearch-easymotion-?)

" Past from yank buffer
imap <C-R><C-R> <C-R>"

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gg :Gcommit<CR>
nnoremap <leader>gr :Ggr 
"nnoremap <silent> <leader>gb :Gblame<CR>
"nnoremap <silent> <leader>gl :Glog<CR>
"nnoremap <silent> <leader>gp :Git push<CR>
"nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>ga :Gwrite<CR>
"nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
"nnoremap <silent> <leader>gi :Git add -p %<CR>
"nnoremap <silent> <leader>gc :SignifyToggle<CR>

" Relad syntax
noremap <F11> <Esc>:syntax sync fromstart<CR>
inoremap <F11> <C-o>:syntax sync fromstart<CR>

" Gpto beggining
nmap <leader>0 ^

" Remap ` to '
" nnoremap ' `
" nnoremap ` '

"Yanks mappings
"nmap <leader>p ciw<C-R>0<Esc>b
nnoremap <leader>p "_diwhp
"nmap <leader>P <Plug>yankstack_substitute_older_paste
"nmap <leader>P "0P

"nmap <leader>w yiw
" nmap gp "zviwp
"nmap <leader>c ciw

" Spell check
nnoremap <leader><F4> :setlocal spell!<cr>

" fold
" toggle current fold
nnoremap <leader>ff za
" close all
nnoremap <leader>fc zM
" delete current fold
"nnoremap <leader>fd zD
" close current fold
"nnoremap <leader>fc zc
" open current fold
"nnoremap <leader>fo zo
" toggle current fold recursively
nnoremap <leader>fF zA
" close current fold recursively
"nnoremap <leader>fC zC
" open all recursively
nnoremap <leader>fo zR

"dont yank
vnoremap <leader>d "_d

"Registers cycle
"noremap <Leader>s :let @x=@" \| let @"=@a \| let @a=@b \| let @b=@x<CR>

" JsDoc
nnoremap <silent> <leader>JS :JsDoc<cr>
"nnoremap <silent> <leader>js <Plug>(jsdoc)

map <silent> <leader>w <Plug>CamelCaseMotion_w
map <silent> <leader>b <Plug>CamelCaseMotion_b
map <silent> <leader>e <Plug>CamelCaseMotion_e
"sunmap w
"sunmap b
"sunmap e

" last edit poistion
nnoremap <leader>z `^

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
imap <C-a> <esc>la

"(v)im (r)eload
nmap <silent> <leader>vr :so %<CR>

" cloase quick window
nnoremap <silent> <leader>qc :cclose<CR>

" Prev/Next change
nnoremap [c g;
nnoremap ]c g,

" setting folding
noremap ]f zr
noremap [f zm

" go to past locations, to be consistent with unimpared
nnoremap [p `[
nnoremap ]p `]

nnoremap <leader>ls :ls<CR>

" Easy bindings for its various modes
"nmap <leader>bb :CtrlPBuffer<cr>
"nmap <leader>bm :CtrlPMixed<cr>
"nmap <leader>bs :CtrlPMRU<cr>

"map /  <Plug>(incsearch-forward)

" UNDO PLUGIN

" map a motion and its reverse motion:
noremap <expr> h repmo#Key('h', 'l')|sunmap h
noremap <expr> l repmo#Key('l', 'h')|sunmap l

" if you like `:noremap j gj', you can keep that:
noremap <expr> j repmo#Key('gj', 'gk')|sunmap j
noremap <expr> k repmo#Key('gk', 'gj')|sunmap k

" repeat the last [count]motion or the last zap-key:
noremap <expr> ; repmo#LastKey(';')|sunmap ;
noremap <expr> , repmo#LastRevKey(',')|sunmap ,

" add these mappings when repeating with `;' or `,':
noremap <expr> f repmo#ZapKey('f')|sunmap f
noremap <expr> F repmo#ZapKey('F')|sunmap F
noremap <expr> t repmo#ZapKey('t')|sunmap t
noremap <expr> T repmo#ZapKey('T')|sunmap T

" Go to next close fold
nnoremap <silent> zj :call NextClosedFold('j')<cr>
nnoremap <silent> zk :call NextClosedFold('k')<cr>
function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction

let g:ctrlp_prompt_mappings = {
  \ 'ToggleType(1)':        ['<c-f>', '<a-k>'],
  \ 'ToggleType(-1)':       ['<c-b>', '<a-j>'],
  \ }
