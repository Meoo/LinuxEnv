
"

syntax enable

filetype indent on

set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab

set cursorline
set number
set showmatch
set showcmd

set incsearch
set hlsearch

set wildmenu
set lazyredraw
set visualbell

set foldenable
set foldlevelstart=99
set foldnestmax=6
set foldmethod=indent


" Autocmds

augroup configgroup
  autocmd!
  autocmd BufEnter Makefile setlocal noexpandtab shiftwidth=0 softtabstop=0
  autocmd BufEnter *.make setlocal noexpandtab shiftwidth=0 softtabstop=0
  autocmd FileType c setlocal foldmethod=syntax colorcolumn=100
  autocmd FileType cpp setlocal foldmethod=syntax colorcolumn=100
augroup END


" Binds

let mapleader=","

nnoremap <space> za
nnoremap <leader>n :nohlsearch<CR>
nnoremap <leader>p :set invpaste<CR>
nnoremap <leader>w :set invwrap<CR>
nnoremap <leader>f myHmugg=G`uzt`y
nnoremap q: <ESC>

cnoremap w!! w !sudo tee > /dev/null %


" Colorscheme

colorscheme desert

highlight clear LineNr
highlight LineNr cterm=bold ctermfg=0 guifg=White

highlight clear CursorLineNr
highlight CursorLineNr cterm=bold ctermfg=7 guifg=DarkGrey

highlight clear ColorColumn
highlight ColorColumn cterm=bold ctermbg=4 guibg=DarkBlue

highlight Comment cterm=bold

highlight clear Constant
highlight Constant cterm=bold ctermfg=5 guibg=DarkMagenta

highlight clear String
highlight String cterm=bold ctermfg=1 guibg=LightRed
highlight link Character String
