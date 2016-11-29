execute pathogen#infect()

" mappings
if filereadable(expand("~/.vim/rc_files/mappings.vim"))
  source ~/.vim/rc_files/mappings.vim
endif

"" JANUS

""
"" Basic Setup
""

set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8

set history=1000
" set spell

""
"" Whitespace
""

set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set smartindent

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

""
"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" Folding settings
""

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

""
"" Splits
""

set splitbelow
set splitright

""
"" Wild settings
""

" Command line autocompletion
" set wildmode=list:longest,list:full
set wildmode=longest,list,full
set wildmenu


" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/*

" Ignore rails temporary asset caches
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


""
"" Backup and swap files
""

set backupdir^=~/.vim/_backup//    " where to put backup files.
set directory^=~/.vim/_temp//      " where to put swap files.

"Undo persistent
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

set pastetoggle=<F12>

""
"" File types
""

filetype plugin indent on " Turn on filetype plugins (:help filetype-plugin)

if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make setlocal noexpandtab

  " make Python follow PEP8 for whitespace ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python setlocal tabstop=4 shiftwidth=4

  " git commits
  au Filetype gitcommit setlocal spell textwidth=72

  " html
  au Filetype html setlocal spell

  " txt
  au FileType txt setlocal spell

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif

endif

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

""
"" Netrw
""

let g:netrw_banner=0
" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.

let g:netrw_browse_split = 0
let g:netrw_preview = 1
let g:netrw_altv = 1
let g:netrw_winsize = 25

let g:netrw_mousemaps = 0

" Default to tree mode
" let g:netrw_liststyle=3

" Change directory to the current buffer when opening files.
" set autochdir

" Extra white space color
hi ExtraWhitespace guibg=#990000 ctermbg=red

" let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" Powerline fonts
let g:airline_powerline_fonts = 1

" Dont pair " in vim files
let g:autoclose_vim_commentmode = 1

" Always sow status
set laststatus=2

" Dont repeat ever
" let g:hardtime_default_on = 1
" let g:hardtime_allow_different_key = 1

" Relative numbers
set relativenumber

"es6 support
let g:syntastic_javascript_checkers = ['eslint']

" python lint
let g:syntastic_python_checkers = ['pylint']

" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger="<c-space>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" webpack
set backupcopy=yes

" JSDOC
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return_description = 0

" open grep results in new tabs
set switchbuf+=usetab,newtab

" camelCaseMotion
" call camelcasemotion#CreateMotionMappings('<leader>')

"bufferagator
let g:buffergator_display_regime = "bufname"

"indent show <leader>ig
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" Select tag attribute as text object
call textobj#user#plugin('tags', {
\   'attribute': {
\     'pattern': '\S\+=".\{-}"',
\     'select': ['aa', 'ia'],
\   }
\ })

" pasted text object, =p
" not really works with ctrl v
let g:pastedtext_select_key = 'p'

" save marks
"set viminfo='100,f1

" dont save buffers to sessions
set sessionoptions-=buffers

let g:ctrlp_working_path_mode = 'r'

set wildignore+=*/tmp/*,*/undodir/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\undodir\\*,*.swp,*.zip,*.exe  " Windows

" not sure if works properly
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|undodir)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg|mov|psd)$',
  \ }

" speed up ctrlP
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" if executable('ag')
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
" endif

" show tab name at the top
let g:airline#extensions#tabline#enabled = 1

" this command needed to unload a buffer
command -nargs=? -bang BW :silent! argd % | bw<bang><args>
