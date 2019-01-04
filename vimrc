syntax on
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
set mouse=
set clipboard=unnamed

" Decrypt an encrypted file, and disable swap files while it's decrypted
function! Decrypt()
    setlocal noswapfile
    %!openssl aes-256-cbc -d -a
endfunction

command Decrypt call Decrypt()

" Encrypt a file, and (re)enable swap files after it's encrypted
function! Encrypt()
    %!openssl aes-256-cbc -a -salt 
    setlocal swapfile
endfunction

command Encrypt call Encrypt()
