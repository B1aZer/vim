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


USEFUL:
 :e #
 opens same file
 `[ `] goto paste location
 c-space snippet
 :JsDoc leader/js
 leader gd
        gr
        gs
 buff leader/b
 ]] good for indents

 Text objects
 http://blog.carbonfive.com/2011/10/17/vim-text-objects-the-definitive-guide/

 daw, yaw

 Vim’s text objects provide an incredible level of precision.
 The key is to try to always edit by text objects. Editing by motions e.g.,
 by part of a line, to the next occurrence of a character, is tedious, clumsy, and slow.
 Instead of correcting a misspelling character by character, change the entire word and re-type it.

 Supertab most likely unused

 Use Fn snippets

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
