set nocompatible              " required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'   "python indentation
Plugin 'lifepillar/vim-solarized8'  "solarized theme
Plugin 'scrooloose/nerdtree'    "vim file navigation
Plugin 'tpope/vim-fugitive'     "git in vim
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}     "show powerline below
Plugin 'tpope/vim-commentary'   "commenting tool
Plugin 'jelera/vim-javascript-syntax'   "highlight javascript syntax
Plugin 'davidhalter/jedi-vim'   "python autocomplete
Plugin 'tpope/vim-surround'     "vim surround

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Custom keys
set splitbelow
set splitright

" Split navigations
nnoremap <C-DOWN> <C-W><C-J>
nnoremap <C-UP> <C-W><C-K>
nnoremap <C-RIGHT> <C-W><C-L>
nnoremap <C-LEFT> <C-W><C-H>

" Mouse navigation
set mouse=n

" Screen navigation
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>

" Enable folding with spacebar
set foldmethod=indent
set foldlevel=20
nnoremap <space> za 

" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set backspace=2
filetype on
filetype plugin indent on

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" Set no backup
set nobackup
set noswapfile

" Set line number
set nu
set hlsearch
set clipboard=unnamed

" Always show status bar and customize color
set laststatus=2

" Powerline
let g:Powerline_symbols = 'fancy'

" NerdTree Settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-\> :NERDTreeToggle<CR>

" Commenting tool with control & slash
noremap <C-_> :Commentary<cr>

" Settings for jedi-vim
let g:jedi#use_splits_not_buffers = "right"
let g:jedi#show_call_signatures = "2"

" Background Settings
set term=xterm-256color
set background=dark
colorscheme space-vim-dark
color space-vim-dark
hi Comment cterm=italic
let g:space_vim_dark_background = 235

" Syntax Highlighting
syntax on
let java_highlight_all=1
let java_mark_braces_in_parens_as_errors=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
let python_highlight_all=1

