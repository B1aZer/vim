.vim folder

# install new modules #
1. git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
2. git add .
3. git commit -m "Install Fugitive.vim bundle as a submodule."
[from](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

# on oher machine
1. git submodule foreach git pull origin master (updates all modules)
