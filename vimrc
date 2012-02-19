" Reder's vimrc
" Reder Tseng <reder.tseng@gmail.com>
" Some settings are from <https://github.com/vgod/vimrc>

" General Settings
set nocompatible	" not compatible with the old-fashion vi mode
filetype off        " Disable because of vundle 

" vundle: https://github.com/gmarik/vundle
" Setup: $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'AutoClose'
Bundle 'sukima/xmledit'
Bundle 'wincent/Command-T'
Bundle 'VimClojure'
Bundle 'jpalardy/vim-slime'

" filetype settings (should be after Bundle settings)
filetype indent on      " Enable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" Encoding Settings
set encoding=utf-8                                  
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,latin1

set bs=2    		" allow backspacing over everything in insert mode
set backspace=2     " make backspace work like most other apps
set history=100		" keep 100 lines of command line history
set ruler	    	" show the cursor position all the time
set autoread		" auto read when file is changed from outside
" set spell           " spell checking

syntax on   		" syntax highlight
set hlsearch		" search highlighting

set number	    	" display line numbers
set cursorline		" underline current cursor
set noerrorbells    " no sound on errors
set novisualbell    " no sound on errors
set t_vb=
set tm=500
set showcmd
set showmatch		" Cursor shows matching ) and }
set showmode		" Show current mode
set wildchar=<TAB>	" start wild expansion in the command line using <TAB>
set wildmenu        " wild char completion menu

set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility

" TAB Settings
set nowrap          " wrap long lines
set expandtab		" replace <TAB> with spaces
set autoindent		" auto indentation
set copyindent		" copy the previous indentation on autoindenting
set smarttab		" insert tabs on the start of a line according to context
set shiftwidth=4    " use indents of 4 spaces
set softtabstop=4   " let backspace delete indent
set tabstop=4       " an indentation every four columns

" Search Settings
set ignorecase
set incsearch

" Files Settings
set nobackup		" no *~ backup files
set nowb
set noswapfile

" gvim
if has("gui_running")
    set guioptions=egmrt
    set lines=30 columns=80
    :colorscheme desert 
    set guifont=Monospace\ 12,Monaco:h16 
    set t_Co=256    " 256 color mode
endif

" VimClojure
let vimclojure#HighlightBuiltins=1  " Highlight Clojure's builtins
let vimclojure#ParenRainbow=1       " Rainbow parentheses'!
