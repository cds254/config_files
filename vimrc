set background=dark

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set incsearch       " Incremental search

filetype off 
filetype plugin indent off 
filetype plugin indent on
syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowrap
set hlsearch
set number
highlight LineNr ctermfg=grey
nnoremap <CR> :nohlsearch<CR>/<BS>

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

set foldmethod=syntax
set foldlevel=99

cmap w!! w !sudo tee 1>&- %
