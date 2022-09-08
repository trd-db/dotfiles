syntax on
set nocompatible
set number relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set wrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set ignorecase
set smartcase
set incsearch
set hlsearch

let mapleader=','

function! Cond(cond, ...)
  let opts = get(a:000, 0, {})
  return a:cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction


if has('win32')
        call plug#begin('~/AppData/Local/nvim/plugged')
    else
        call plug#begin()
    endif
        Plug 'tpope/vim-sensible'
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-surround'
        Plug 'phaazon/hop.nvim'
  
call plug#end()

lua << EOF
require'hop'.setup {
  keys = 'etovxqpdygfblzhckisuran',
}
EOF

nnoremap <silent> <leader><leader>b :lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>w :lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>e :lua require'hop'.hint_words()<cr>
nnoremap <silent> <leader><leader>f :lua require'hop'.hint_char1()<cr>
nnoremap <silent> <leader><leader>t :lua require'hop'.hint_char2()<cr>
nnoremap <silent> <leader><leader>/ :lua require'hop'.hint_patterns()<cr>
nnoremap <silent> <leader><leader>j :lua require'hop'.hint_lines()<cr>
nnoremap <silent> <leader><leader>k :lua require'hop'.hint_lines()<cr>

vnoremap <silent> 'leader><leader>w :lua require'hop'.hint_words()<cr>
vnoremap <silent> <leader><leader>b :lua require'hop'.hint_words()<cr>
vnoremap <silent> <leader><leader>o :lua require'hop'.hint_char1()<cr>
vnoremap <silent> <leader><leader>t :lua require'hop'.hint_char2()<cr>
vnoremap <silent> <leader><leader>/ :lua require'hop'.hint_patterns()<cr>
vnoremap <silent> <leader><leader>l :lua require'hop'.hint_lines()<cr>

nmap <silent> k gk
nmap <silent> j gj
nmap <silent> 0 g0
nmap <silent> $ g$

vmap <silent> k gk
vmap <silent> j gj
vmap <silent> 0 g0
vmap <silent> $ g$