" Reder's vimrc
" Reder Tseng <reder.tseng@gmail.com>

" General Settings
set nocompatible	" not compatible with the old-fashion vi mode
set nobackup		" no *~ backup files

" Encoding Settings
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1

set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc


syntax on		" syntax highlight
set hlsearch		" search highlighting

set number		" display line numbers
set cursorline		" underline current cursor
set noerrorbells
set novisualbell
set showcmd
set showmatch		" Cursor shows matching ) and }
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu            " wild char completion menu

" TAB Settings
set expandtab		" replace <TAB> with spaces
set autoindent		" auto indentation
set copyindent		" copy the previous indentation on autoindenting
set smarttab		" insert tabs on the start of a line according to context
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Search Settings
set ignorecase
set incsearch
