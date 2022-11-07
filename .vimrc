" Don't try to be vi compatible
set nocompatible

" Default runtime
set rtp=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME

if has("win32")
    set rtp+=$HOME/vimfiles
endif

" Allow backups
set backup                         
" No need for swap file
set noswapfile                     

" Long history
set history=1000

" Keep an undo record
set undofile
set undoreload=10000

" Put files in .vim tmp directory
set undodir=$HOME/.vim/tmp/undo/      
set backupdir=$HOME/.vim/tmp/backup/  
set directory=$HOME/.vim/tmp/swap/    

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" UTF-8 Encoding
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8

" Tabs are 4 spaces, and smartly use them
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent

" Incremental searching, also ignore case
set incsearch ignorecase smartcase hlsearch

" Use wild menu
set wildmode=longest,list,full wildmenu

" Show ruler and status
set ruler laststatus=2 showcmd showmode

" Do less redraws
set lazyredraw

" Match indentation to nearest guide
set shiftround

" Set backspace
set backspace=indent,eol,start

" Do line wrapping
set wrap breakindent
set textwidth=0

" Add folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" Allow hidden buffers
set hidden

" Use relative line numbers
set number relativenumber

" Use title
set title

" Spellcheck off by default
set nospell

" Add more room for commands
set cmdheight=2

" I never want to hear the annoying bell
set belloff=all

" Enable filetype plugins
filetype plugin on
filetype indent on

" Split how expected
set splitbelow
set splitright

" No modeline
set nomodeline

" Include subfolders in path, and autocomplete in file search
set path+=** 

" Automatically change working directory...easier to find tags
set autochdir

" Smartly try and find tags
set tags=./tags,tags;$HOME
set tags+=/usr/include/**/tags

" Return to last edit position when opening files
augroup remember_buffer_pos
    autocmd!
    autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
augroup END

" Auto reload file
set autoread

" Fast terminal
set ttyfast
" Use mouse
set mouse=a

" Increase scrolloff
if !&scrolloff
    set scrolloff=10
endif

" show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Disable GUI Extras
if has("gui_running")
	set guioptions-=m  
	set guioptions-=T  
	set guioptions-=r  
	set guioptions-=L
endif

" No conceal
set conceallevel=0
set concealcursor=""

" Match tags and use %
set matchpairs+=<:> 

" Use the system clipboard
set clipboard=unnamedplus

" File formats
set fileformats=unix,dos,mac

" Syntax highlighting
syntax on 
" Light background
set background=light 

" Show matching brackets
set showmatch

" Movement keys work on wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

