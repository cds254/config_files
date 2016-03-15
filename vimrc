syntax on
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set showmatch       " Show matching brackets.
set ignorecase      " Do case insensitive matching
set incsearch       " Incremental search

filetype off 
filetype plugin indent off 
"set runtimepath+=$GOROOT/misc/vim
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
" Pressing return clears highlighted search
nnoremap <CR> :nohlsearch<CR>/<BS>

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

set foldmethod=syntax
set foldlevel=99