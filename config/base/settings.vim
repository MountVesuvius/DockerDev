" General Display
set encoding=utf-8      	" Encoding used for displaying file
set backspace=indent,eol,start	" Fixes backspace functionality

set number          		" Show line numbers down the left
set relativenumber      	" Show the distance between current line and others
set ruler           		" Show the cursor position all the time
set cursorline			" Highlight cursor line
set colorcolumn=80		" Vertical line at pos 80

set scrolloff=15        	" Adds lines at the end of the file to allow for scrolling
set showmatch           	" Highlight matching braces
set noshowmode          	" Don't show the mode VIM is currently in

" Split Layouts
set splitbelow          	" Creates active Split Below, :sp
set splitright          	" Creates active Split Left, :vs
 
" Enable Folding
set foldmethod=indent   	" Fold on indentation
set foldlevel=99		" Fully fold

" Searching
set hlsearch			" Highlights search results
set ignorecase			" Case-insensitive search
set incsearch			" Incremental searching
set smartcase			" Makes capital searchs case sensitive
set ignorecase			" But not for lowercase searches

" Universal Clipboard
set clipboard=unnamedplus

" Treats <word>-<word> as a single word
set iskeyword+=-
