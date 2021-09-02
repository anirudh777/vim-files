"filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-scripts/taglist.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'
" Bundle 'hdima/python-syntax'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'FuzzyFinder'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'wincent/command-t'
Bundle 'fatih/vim-go'
Plugin 'jreybert/vimagit'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'

Bundle 'altercation/vim-colors-solarized'

" Funny stuff
Plugin 'koron/nyancat-vim'

" Better autocomplete
"Plugin 'zxqfl/tabnine-vim'

Plugin 'rainglow/vim'

Bundle 'dkprice/vim-easygrep'

" Markdown syntax support
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required


set nocompatible

filetype plugin on
filetype indent on

set autoread
set smarttab
set ruler
set encoding=utf8
set ffs=unix,dos,mac

set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=120

set tags+=~/.vim/systags

set t_Co=256
syntax on
"set foldmethod=syntax

set completeopt=menuone,preview

"filetype plugin on
set omnifunc=syntaxcomplete#Complete

"syntax plugin
execute pathogen#infect()

syntax enable
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"colorscheme glade
"colorscheme pychimp
"colorscheme elflord

set number
set incsearch
set smartcase
set showmatch
set comments=sl:/*,mb:\ *,elx:\ */
set wildmode=longest:full
set wildmenu

autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Inconsolata\ 12
"  elseif has("gui_win32")
"    set guifont=Consolas:h10
"  endif
"endif

"if has("gui_running")
"  " GUI is running or is about to start.
"  " Maximize gvim window (for an alternative on Windows, see simalt below).
"  set lines=999 columns=999
"  " set guifont=Monospace\ 10
"  set guifont=Source\ Code\ Pro\ For\ Powerline\ Medium\ 10
"else
"  " This is console Vim.
"  if exists("+lines")
"    set lines=54
"  endif
"  if exists("+columns")
"    set columns=205
"  endif
"endif

" Powerline setup
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

map <F2> :NERDTreeToggle<CR>

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
"let g:pymode_rope = 1
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 0

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_options_colorcolumn = 0

let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
" Don't autofold code
let g:pymode_folding = 0

let g:pymode_indent = 0
let g:pymode_rope_show_doc_bind = '<Ctrl-c>d'

let NERDTreeShowHidden=1
let python_highlight_all = 1

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"syntax enable
set background=dark
colorscheme solarized
"colorscheme legacy

"tag-list
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Use_Right_Window = 1

"for ctags
set tags=./tags;/

"tags mapping
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"mouse support
if has('mouse_sgr')
    set ttymouse=sgr
endif

"for fzf
set rtp+=~/.fzf

"for changing cursor in different modes
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"



" to tab by number
 noremap <M>1 1gt
 noremap <M>2 2gt
 noremap <M>3 3gt
 noremap <M>4 4gt
 noremap <M>5 5gt
 noremap <M>6 6gt
 noremap <M>7 7gt
 noremap <M>8 8gt
 noremap <M>9 9gt
 noremap <M>0 :tablast<cr>


map <C-Up> <Esc>:tabprev<CR>
map <C-Down> <Esc>:tabnext<CR>
map <C-n> <Esc>:tabnew

let g:pymode_rope_lookup_project = 0

"tagbar
nmap <F8> :TagbarToggle<CR>


"for ctrlp
let g:ctrlp_max_files=0

let g:ctrlp_working_path_mode = 'ra'
"When invoked, unless a starting directory is specified, CtrlP will set its local working directory according to this variable'c' - the directory of the current file. 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs 'a' - like c, but only if the current working directory outside of CtrlP is not a direct ancestor of the directory of the current file. 0 or '' (empty string) - disable this feature.

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_max_height = 20

let g:ctrlp_max_files = 500000

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|installer\|node_modules\|build\|main-NH4\|tmp$',
  \ 'file': '\v\.(exe|so|dll|pyc|css|ttf|jpeg|gif|mustache|png|md|wf)$' }

let g:EasyGrepRecursive=1

"let g:GrepProgram=4
let g:EasyGrepCommand='rg'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" " when indenting with '>', use 4 spaces width
set shiftwidth=4
" " On pressing tab, insert 4 spaces
set expandtab

" Make backspace work
set bs=2

"" set python virtualenv path for pymode
let g:pymode_virtualenv_path = '/home/anirudh/.virtualenvs/calm/'
