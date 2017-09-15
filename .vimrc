set nocompatible              " required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let g:ale_emit_conflict_warnings = 0

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-commentary'

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

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Folding and Indentation
let g:SimpylFold_docstring_preview=1
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix

set encoding=utf-8
set backspace=2

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" NerdTree Settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-\> :NERDTreeToggle<CR>

" Set line number
set nu

" Always show status bar and customize color
set laststatus=2
let g:airline_theme='powerlineish'

set clipboard=unnamed

" Ale see: :help ale-completion
let g:ale_completion_enabled = 1

" Syntax Highlighting
let java_mark_braces_in_parens_as_errors=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
let java_highlight_functions="style"
let java_minlines = 150
let python_highlight_all=1
syntax on

" Background Settings
set background=dark
colorscheme solarized

" Editing customization
inoremap { {<CR>}<ESC>O
noremap <leader>/ :Commentary<cr>
