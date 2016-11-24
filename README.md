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
 c-j snippet (after tab)
 :JsDoc
 leader gd
        gr
        gs

