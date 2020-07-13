.vim folder

Vim is like language itself. It has:

 - verbs (yank, delete)
 - subjects (word, mark, paragraph, search text)
 - prefixes (3j, 2w)

### Install new modules

1. git submodule add http://github.com/tpope/vim-fugitive.git /pack/bundle/start/fugitive
2. git add .gitmodules /pack/bundle/start/fugitive
3. git commit -m "Install Fugitive.vim bundle as a submodule."
[from](https://shapeshed.com/vim-packages/)
~~4. Install [deoplete](https://github.com/Shougo/deoplete.nvim)~~
~~4. install YCM; cd bundle/tern_for_vim -> npm install~~

### Update modules

1. git submodule update --remote --merge
2. git commit

### Removing a package [^2]

1. git submodule deinit vim/pack/shapeshed/start/vim-airline
2. git rm vim/pack/shapeshed/start/vim-airline
3. rm -Rf .git/modules/vim/pack/shapeshed/start/vim-airline
4. git commit

### On other machine

(you may need to go in bundles directory)
0. git submodule update --init --recursive
1. git submodule foreach git pull origin master (updates all modules)

### ~~Update submodules~~

1. git pull --recurse-submodules
2. git submodule update --init --recursive
(3). git submodule foreach --recursive git checkout master
~~(3). in YouCompleteMe dir git submodule update --init --recursive~~



###### Apply custom patches

cp ./custom_patches/ftplugin/markdown.vim to ./bundles/vim-markdown/ftplugin/markdown.vim

### Fonts

monaco for terminal
power font for airline

### USEFUL

 - ctrl+[ - escape!
 - :e # edit last used (alias) buffer
 - [p ]p goto paste location
 - [\` ]\` next/prev mark
 - [z ]z next/prev open fold. Would work even on hidden folds
 - zj, zk nex/prev fold
 - zh, zl - more/less folding
 - [c ]c next/prev change
 - :JsDoc leader/js
 - git: leader gd gr gs
 - ]] good for indents
 - c-space expose snippet
 - Use Fn snippets. https://github.com/honza/vim-snippets/tree/master/UltiSnips
 - Use surroundings: https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
   - ys - you sourround, ysiw
   - cs - change surround
   - ds - delete surront
   - on any text object
 - aa - around attr object (for html)
 - v_o - o in visual mode goes to the other side of selection
 - Last edited text saved in . register, you also can jump to with \`.
 - d_v_d - deletes from cursor to begging of the screen. But how ?
 - :vert sb N //// nope - <c-w>v(s) - open this buffer ib vert split
 - :on - close splits beside this
 - :w!! - sudo save
 - Ctrl-O - in insert mode, execute one command and return to insert mode
 - :%s//bar/g - replace all ocurrences of last searched pattern
 - ge in Markdown open local link
 - gx in Markdown open ext link
 - C+^ to prev buffer
 - z= for autocorrect misspelling options

### Mappings

 - TODO: kj = escape
 - Use Fn snippets. https://github.com/honza/vim-snippets/tree/master/UltiSnips
 - use C-j,k instead of smooth scroll
 - Abbreviations = req and space => @requires 
 - %% expend to working dir
 - leader qq = quit
 - leader q = unload buffer
 - ll l => easymotion line forward
 - ll h => easymotion line backwards
 - ll /,?,;
 - F11 reload syntax
 - leader d = don't yank
 - C-a to go AFTER the bracket, instead of C-o l
 - leader vr = vim reload
 - zl,zh = set folding
 - zj,zk - go to next folds
 - [z ]z next/prev open fold. Would work even on hidden folds
 - leader ve = netrw
 - leader j = Table of contents in Markdown
 - leader t = toggle checkbox in Markdown
 - ]] good for indents in Markdown
 - [c ]c next/prev change
 - [p ]p goto paste location
 - Use surroundings: https://github.com/tpope/vim-surround/blob/master/doc/surround.txt
   - ys - you sourround, ysiw
   - cs - change surround
   - ds - delete surront
   - on any text object

###### Tabularize

```
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,\zs<CR>
vmap <Leader>a, :Tabularize /,\zs<CR>
```

###### Writing tips

```
[<Space>                Add [count] blank lines above the cursor.
*]<Space>*
]<Space>                Add [count] blank lines below the cursor.
*[e* *v_[e*
[e                      Exchange the current line with [count] lines above it.
*]e* *v_]e*
]e                      Exchange the current line with [count] lines below it.
```

### Don't Use Tabs, Only Buffers

http://vim.wikia.com/wiki/Vim_buffer_FAQ

### Motions

!!! First rule of VIM - use motion as verb and action as noun !!!

The most quick motion is easymotions

es-f
es-/ (if there are multiple occurences of the word)
and so on

### Text Select

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

### TODO

  - [x] move to easyclip, use + and other registers instead
  - [x] write jsdoc modifies, uses
  - [.] text obj: js: from start of the line to ;
  - [ ] move to next indent
  - [.] <leader>D delete from the left of var to the indent
  - [x] don't use <leader-jk>, use <c-w> and map them to movement
  - [.] Make use of folds. More useful folding. Learn bindings. Use marks. Use as text objects. https://www.linux.com/learn/vim-tips-folding-fun
  - [x] Make standard paired bindings to all common commands, similar to unimpared
  - [x] ~~spell is not working <leader>F4~~ (problem with keyboard swap-fx)
  - [x] CtrlP is slow and not really useful, fzf ftw
  - [x] ~~Somehow the smae buffer is always opens~~ (Able to resolve with new :BW command)
  - [ ] New mappings. http://learnvimscriptthehardway.stevelosh.com/chapters/15.html#movement-mappings
  - [ ] Check for useful mappings: https://github.com/skwp/dotfiles
  - [.] Write a plugin that would auto mark every edit, so it would be easy to jump back, [c not always works for some reason
  - [ ] http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim#answer-1220118

###### Referene

[^2]: [github issue](https://gist.github.com/myusuf3/7f645819ded92bda6677)

