Vim�UnDo� шgŀO����p���E��vC�m��Ϩ;@                                      Tv��    _�                             ����                                                                                                                                                                                                                                                                                                                                      !          V       Tv��     �                inoremap <leader>w <C-O><C-W>   cnoremap <leader>w <C-C><C-W>   onoremap <leader>w <C-C><C-W>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Tv��     �                noremap <leader>w <C-W>5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Tv��     �         b    �         b    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Tv��    �         c    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V       Tv�     �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       Tv�    �                 5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        Tv��     �                noremap <leader>w <C-W>       " tab navigation like firefox   !nnoremap <A-j>   :tabprevious<CR>   nnoremap <A-k>   :tabnext<CR>   nnoremap <C-t>     :tabnew<CR>   nnoremap <C-w>   :tabclose<CR>       'inoremap <A-j>   <Esc>:tabprevious<CR>i   #inoremap <A-k>   <Esc>:tabnext<CR>i   #inoremap <C-t>     <Esc>:tabnew<CR>   #inoremap <C-w>   <Esc>:tabclose<CR>    5�_�                             ����                                                                                                                                                                                                                                                                                                                                       J           V        Tv��    �             6   map  <A-0> 0gt   imap <A-0> <Esc>0gt   map  <A-1> 1gt   imap <A-1> <Esc>1gt   map  <A-2> 2gt   imap <A-2> <Esc>2gt   map  <A-3> 3gt   imap <A-3> <Esc>3gt   map  <A-4> 4gt   imap <A-4> <Esc>4gt   map  <A-5> 5gt   imap <A-5> <Esc>5gt   map  <A-6> 6gt   imap <A-6> <Esc>6gt   map  <A-7> 7gt   imap <A-7> <Esc>7gt   map  <A-8> 8gt   imap <A-8> <Esc>8gt   map  <A-9> 9gt   imap <A-9> <Esc>9gt       ("makes K split lines (the opposite of J)   nnoremap K i<cr><esc>k$        #" map <A-n> :NERDTreeTabsToggle<CR>       !" Move tabs with alt + left|right   Innoremap <silent> <C-H> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>   Ennoremap <silent> <C-L> :execute 'silent! tabmove ' . tabpagenr()<CR>   Innoremap <silent> <C-J> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>   Ennoremap <silent> <C-K> :execute 'silent! tabmove ' . tabpagenr()<CR>       " Toggle Vexplore with Ctrl-E   function! ToggleVExplorer()     if exists("t:expl_buf_num")   1      let expl_win_num = bufwinnr(t:expl_buf_num)         if expl_win_num != -1   "          let cur_win_nr = winnr()   (          exec expl_win_num . 'wincmd w'             close   &          exec cur_win_nr . 'wincmd w'             unlet t:expl_buf_num   
      else             unlet t:expl_buf_num         endif     else         exec '1wincmd w'         Vexplore   %      let t:expl_buf_num = bufnr("%")     endif   endfunction   .map <silent> <A-n> :call ToggleVExplorer()<CR>   #" map <A-n> :NERDTreeTabsToggle<CR>    5��