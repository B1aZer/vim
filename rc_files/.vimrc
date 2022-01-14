"execute pathogen#infect()
"Helptags

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
"set nofoldenable        "dont fold by default
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

set wildignore+=*/tmp/*,*/undodir/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*\\undodir\\*,*.swp,*.zip,*.exe  " Windows

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

filetype plugin indent on " Turn on filetype indent

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

" Extra white space color
hi ExtraWhitespace guibg=#990000 ctermbg=red

" let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" smat case for ee
let g:EasyMotion_smartcase = 1
let g:sneak#use_ic_scs = 1

" Powerline fonts
let g:airline_powerline_fonts = 1

" show tab name at the top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 0

" Dont pair " in vim files
let g:autoclose_vim_commentmode = 1

" Always show status
set laststatus=2

" Dont repeat ever
" let g:hardtime_default_on = 1
" let g:hardtime_allow_different_key = 1

" Relative numbers
set relativenumber

"es6 support
let g:syntastic_javascript_checkers = ['eslint']

" python lint
let g:syntastic_python_checkers = ['pep8']

" show all messages
let g:syntastic_aggregate_errors = 1

" Trigger configuration. Do not use <tab> if you use YouCompleteMe
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-@>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" webpack
set backupcopy=yes

" JSDOC
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_return_description = 0

" open grep results in new tabs
"set switchbuf+=usetab,newtab

" camelCaseMotion
" call camelcasemotion#CreateMotionMappings('<leader>')

"bufferagator
"let g:buffergator_display_regime = "bufname"

"indent show <leader>ig
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

"call textobj#user#plugin('tags', {
"\   'attribute': {
"\     'select-a-function': 'CurrentLineA',
"\     'select-a': 'aa',
"\     'select-i-function': 'CurrentLineA',
"\     'select-i': 'ia',
"\   }
"\ })

"function! CurrentLineA()
  "execute "normal! ?\"\rB"
  "let head_pos = getpos('.')
  "normal! E
  "let tail_pos = getpos('.')
  "return ['v', head_pos, tail_pos]
"endfunction

" save marks
"set viminfoviminfo='100,f1

" dont save buffers to sessions
set sessionoptions-=buffers

let g:ctrlp_working_path_mode = 'r'

" set dafault mode for ctrlP
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_map = '<c-p>'

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

" this command needed to unload a buffer
command -nargs=? -bang BW :silent! argd % | bw<bang><args>

" enable jsdoc plugin
let g:javascript_plugin_jsdoc = 1

" set indeng guides width
let g:indent_guides_guide_size = 1

" call expand_region#custom_text_objects({
"       \ "\/\\n\\n\<CR>": 1,
"       \ 'a]' :1,
"       \ 'ab' :1,
"       \ 'aB' :1,
"       \ 'ii' :0,
"       \ 'ai' :0,
"       \ })

let g:SignatureMap = {
      \ 'Leader'             :  "m",
      \ 'PlaceNextMark'      :  "m,",
      \ 'ToggleMarkAtLine'   :  "m.",
      \ 'PurgeMarksAtLine'   :  "m-",
      \ 'DeleteMark'         :  "dm",
      \ 'PurgeMarks'         :  "m<Space>",
      \ 'PurgeMarkers'       :  "m<BS>",
      \ 'GotoNextLineAlpha'  :  "",
      \ 'GotoPrevLineAlpha'  :  "",
      \ 'GotoNextSpotAlpha'  :  "",
      \ 'GotoPrevSpotAlpha'  :  "",
      \ 'GotoNextLineByPos'  :  "]'",
      \ 'GotoPrevLineByPos'  :  "['",
      \ 'GotoNextSpotByPos'  :  "]`",
      \ 'GotoPrevSpotByPos'  :  "[`",
      \ 'GotoNextMarker'     :  "]-",
      \ 'GotoPrevMarker'     :  "[-",
      \ 'GotoNextMarkerAny'  :  "]=",
      \ 'GotoPrevMarkerAny'  :  "[=",
      \ 'ListBufferMarks'    :  "m/",
      \ 'ListBufferMarkers'  :  "m?"
      \ }

" no sound
set belloff=all

" Allow markdown
let g:ycm_filetype_blacklist = {}

" Minimal
colorscheme paramount-indie
set background=light
"colorscheme slate-imp
"colorscheme default

" vim markdown

" YAML formatting
let g:vim_markdown_frontmatter = 1

" Spell check for markdown
autocmd FileType markdown setlocal spell

" Open db on startup
" autocmd VimEnter * if !argc() | edit ~/Dropbox/Knowledge\ db/Zettlr/README.md | endif
"
" Change directory to the current buffer when opening files.
" set autochdir

" shrink toc if possible
let g:vim_markdown_toc_autofit = 1

" fancy syntax concealment
autocmd FileType markdown set conceallevel=2

" but not for code blocks
let g:vim_markdown_conceal_code_blocks = 0

" adding fzf
set rtp+=~/.fzf

" fzf Ggrep with preview
"command! -bang -nargs=* GGrep
" \ call fzf#vim#grep(
" \   'git grep --line-number -- '.shellescape(<q-args>), 0,
" \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

" Do not auto close brackets in Markdown
au FileType markdown let b:delimitMate_autoclose = 0

function! s:build_quickfix_list(lines)
  let s:filenames = map(copy(a:lines), '{ "filename": v:val }')
  for s:filename in s:filenames
    let s:lines = readfile(s:filename.filename)
    try
      execute "normal!a[[" . split(s:lines[1],': ')[1] ."]] [". split(s:lines[2],': ')[1] ."](" . s:filename.filename . ")\<Esc>"
    catch /.*/
      echo "Caught error: " . v:exception
    endtry
    try
      execute "normal!A {due: " . split(s:lines[3],': ')[1] ."}\<Esc>0"
    catch /.*/
      echo "Caught error: " . v:exception
    endtry
  endfor
endfunction

" Link file from fzf
let g:fzf_action = {
  \ 'ctrl-l': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Set defulat working dir
" cd ~/Dropbox/Knowledge db/Zettlr

" Create note in the same folder as buffer opened
func! s:note_add(...)

  " build the file name
  let l:sep = ''
  if len(a:000) > 0
    let l:sep = '-'
  endif
  let l:fname = expand('%:h'). '/' . strftime("%F-%H%M") . l:sep . join(a:000, '-') . '.md'

  " edit the new file
  exec "e " . l:fname

  " enter the title and timestamp (using ultisnips) in the new file
  if len(a:000) > 0
    exec "normal ggO--\<c-@>\<c-l>\<c-j>" . join(a:000) . "\<esc>L"
  else
    exec "normal ggO--\<c-@>\<c-l>\<c-j>"
  endif
endfunc

" Create note
command! -nargs=* Note call s:note_add(<f-args>)

" spell lange check
set spelllang=en_us,ru_ru

" Enable guides by default
let g:indent_guides_enable_on_vim_startup = 1

" deoplete startup
let g:deoplete#enable_at_startup = 1

function! s:PluginFunctions()

  " Select tag attribute as text object
  " Same as vaW (almost except for >)
  call textobj#user#plugin('tags', {
  \   'attribute': {
  \     'pattern': '\S\+=".\{-}"',
  \     'select': ['aa', 'ia'],
  \   }
  \ })

  "call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
  "<TAB>: completion.
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

endfunction

autocmd VimEnter * call s:PluginFunctions()

" Git Grep TODO: replace with :Ag
" command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

" vim hardmode
let g:hardtime_default_on = 1

" see key presses
set showcmd

" temp solution for wahite scace
" better - https://superuser.com/questions/921920/display-trailing-spaces-in-vim
set list listchars=tab:\ \ ,trail:·
