" Disable compatibility with vi to not cause issues
set nocompatible
 
" Enable filetype detection
filetype on

" Enable plugins for detected file type
filetype plugin on

" Syntax highlighting, colored code
syntax on

" Encoding
set encoding=utf-8

" Show line numbers
set number
set relativenumber

" Always show x lines below and above cursor
set scrolloff=10

" Same indent as this line
set autoindent

" Status bar
set laststatus=2

" Highlight position
set cursorline

highlight Cursorline cterm=bold ctermbg=black
set cursorcolumn
highlight Cursorcolumn ctermbg=black

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug

" Enable highlight search pattern
set hlsearch

" Enable smartcase search sensitivity
set ignorecase
set smartcase

" Indentation using space
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Show match pair [] {} ()
set showmatch	

"set clipboard=unnamedplus

" Create pair
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0

endif
