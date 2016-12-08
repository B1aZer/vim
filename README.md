.vim folder

# install new modules #
1. git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
2. git add .
3. git commit -m "Install Fugitive.vim bundle as a submodule."
[from](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

# on other machine #
0. git submodule update --init
1. git submodule foreach git pull origin master (updates all modules)

# update submodules #
1. git pull --recurse-submodules
2. git submodule update --recursive


# USEFUL: #

 - ctrl+[ - escape!
 - :e # edit last used (alias) buffer
 - [p ]p goto paste location
 - [\` ]\` next/prev mark
 - [z ]z next/prev open fold. Would work even on hidden folds
 - zj, zk nex/prev fold
 - [c ]c next/prev change
 - c-space expose snippet
 - :JsDoc leader/js
 - git: leader gd gr gs
 - ]] good for indents
 - Use Fn snippets. https://github.com/honza/vim-snippets/tree/master/UltiSnips
 - Use surroundings: https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
   ys - you sourround
   cs - change surround
   ds - delete surront
   on any text object
 - aa - around attr object (for html)
 - v_o - o in visual mode goes to the other side of selection
 - Last edited text saved in . register, you also can jump to with \`.
 - d_v_d - deletes from cursor to begging of the screen. But how ?
 - :vert sb N - open this buffer ib vert split

 ```
 nmap <Leader>a= :Tabularize /=<CR>
 vmap <Leader>a= :Tabularize /=<CR>
 nmap <Leader>a: :Tabularize /:\zs<CR>
 vmap <Leader>a: :Tabularize /:\zs<CR>
 nmap <Leader>a, :Tabularize /,\zs<CR>
 vmap <Leader>a, :Tabularize /,\zs<CR>
 ```

 ```
 [<Space>                Add [count] blank lines above the cursor.
 *]<Space>*
 ]<Space>                Add [count] blank lines below the cursor.
 *[e* *v_[e*
 [e                      Exchange the current line with [count] lines above it.
 *]e* *v_]e*
 ]e                      Exchange the current line with [count] lines below it.
 ```

# Don't Use Tabs, Only Buffers #

http://vim.wikia.com/wiki/Vim_buffer_FAQ

# Motions #

 !!! First rule of VIM - use motion as verb and action as noun !!!

 The most quick motion is easymotions

 es-f
 es-/ (if there are multiple occurences of the word)
 and so on

# Text Select #

The most quick way to select object is to use:

 Text objects
 http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/

 daw, yaw

 Vim’s text objects provide an incredible level of precision.
 The key is to try to always edit by text objects. Editing by motions e.g.,
 by part of a line, to the next occurrence of a character, is tedious, clumsy, and slow.
 Instead of correcting a misspelling character by character, change the entire word and re-type it.

 ```
 vmap v <Plug>(expand_region_expand)
 vmap <C-v> <Plug>(expand_region_shrink)
 ```

# TODO #

- write jsdoc modifies, uses

- text obj: js: from start of the line to ;
- move to next indent
- <leader>D delete from the left of var to the indent

- Make use of folds. More useful folding. Learn bindings. Use marks. Use as text objects. https://www.linux.com/learn/vim-tips-folding-fun
- Make standard paired bindings to all common commands, similar to unimpared
- ~~spell is not working <leader>F4~~ (problem with keyboard swap-fx)
- CtrlP is slow and not really useful
- ~~Somehow the smae buffer is always opens~~ (Able to resolve with new :BW command)
- New mappings. http://learnvimscriptthehardway.stevelosh.com/chapters/15.html#movement-mappings
- Check for useful mappings: https://github.com/skwp/dotfiles
- Write a plugin that would auto mark every edit, so it would be easy to jump back, [c not always works for some reason

http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim#answer-1220118
