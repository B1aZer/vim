.vim folder

# install new modules #
1. git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
2. git add .
3. git commit -m "Install Fugitive.vim bundle as a submodule."
[from](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

# on oher machine #
0. git submodule update --init
1. git submodule foreach git pull origin master (updates all modules)

# update submodules #
1. git pull --recurse-submodules
2. git submodule update --recursive


#USEFUL:

 - :e # edit last used (alias) buffer
 - `[ `] goto paste location
 - [` ]` next/prev mark
 - [z ]z next/prev fold. Would work even on hidden folds
 - c-space expose snippet
 - :JsDoc leader/js
 - git:
   leader gd
          gr
          gs
 - ]] good for indents
 -
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
  nmap <Leader>a, :Tabularize /,\zs<CR>
  vmap <Leader>a, :Tabularize /,\zs<CR>

 ============

Motions

 The most quick motion is easymotions

 es-f
 es-/ (if there are multiple occurences of the word)
 and so on

 ==============

The most quick way to select object is to use:

 Text objects
 http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/

 daw, yaw

 Vim’s text objects provide an incredible level of precision.
 The key is to try to always edit by text objects. Editing by motions e.g.,
 by part of a line, to the next occurrence of a character, is tedious, clumsy, and slow.
 Instead of correcting a misspelling character by character, change the entire word and re-type it.

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

#TODO

- Make use of folds. More useful folding. Lern bindings. Use marks. Use as text objects
- Make standard paired bindings to all common commands, similar to unimpared
- spell is not working <leader>F4
- Use Fn snippets

