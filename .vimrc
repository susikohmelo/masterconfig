set shell=/bin/bash
set tabstop=4
set shiftwidth=4
set mouse=a
filetype indent on
filetype plugin indent on
syntax enable
set history=1000
set nowrap
set scrolloff=1
set number relativenumber
set encoding=utf-8
"set colorcolumn=81
"highlight ColorColumn ctermbg=11

" Read .asm extensions as NASM and set formatting
au BufRead,BufNewFile *.asm set filetype=nasm shiftwidth=8 tabstop=8

" FILETREE SPECIFIC
autocmd BufRead,BufNewFile /*cdling* set tabstop=8 shiftwidth=8

"colorscheme murphy
colorscheme default

" Filetree on ctrl b
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> :Lex<cr>:vertical resize 30<cr>
vnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>


" SPLITS/TABS --------------------------------------------------------
" Split shortcut
nnoremap <c-w> :split<cr>
"inoremap <c-s> <Esc>:split<cr>
vnoremap <c-w> <Esc>:split<cr>
nnoremap <c-s> :vsplit<cr>
"inoremap <c-a> <Esc>:vsplit<cr>
vnoremap <c-s> <Esc>:vsplit<cr>

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><


" Open new tabs and navigate them with Shift + arrowkeys
"inoremap <S-l> <Esc>:tabnext<cr>
nnoremap <S-l> :tabnext<cr>
"inoremap <S-h> <Esc>:tabprevious<cr>
nnoremap <S-h> :tabprevious<cr>
"inoremap <S-j> <Esc><:tabclose<cr>
nnoremap <S-j> :tabclose<cr>
"inoremap <S-k> <Esc>:tabnew<cr>
nnoremap <S-k> :tabnew<cr>

" WILDMENU -----------------------------------------------------------
" Recursive file finding, very useful
set path+=**
set wildmenu
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set hlsearch
