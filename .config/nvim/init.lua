require("config.lazy")
require("susikolormelo.init").colorscheme()

-- prevent the built-in vim.lsp.completion autotrigger from selecting the first item
vim.opt.completeopt = { "menuone", "popup" } 

vim.cmd("inoremap jj <ESC>")

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

vim.cmd("set shell=/bin/zsh")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set mouse=a")
vim.cmd("filetype indent on")
vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")
vim.cmd("set history=1000")
vim.cmd("set nowrap")
vim.cmd("set scrolloff=1")
vim.cmd("set number relativenumber")
vim.cmd("set encoding=utf-8")
--set colorcolumn=81
--highlight ColorColumn ctermbg=11

-- Read .asm extensions as NASM and set formatting
vim.cmd("au BufRead,BufNewFile *.asm set filetype=nasm shiftwidth=8 tabstop=8")

-- FILETREE SPECIFIC
vim.cmd("autocmd BufRead,BufNewFile /*cdling* set tabstop=8 shiftwidth=8")

-- SPLITS/TABS --------------------------------------------------------
-- Split shortcut
vim.cmd("nnoremap <c-w> :split<cr>")
vim.cmd("vnoremap <c-w> <Esc>:split<cr>")
vim.cmd("nnoremap <c-s> :vsplit<cr>")
vim.cmd("vnoremap <c-s> <Esc>:vsplit<cr>")

-- You can split the window in Vim by typing :split or :vsplit.
-- Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
vim.cmd("nnoremap <c-j> <c-w>j")
vim.cmd("nnoremap <c-k> <c-w>k")
vim.cmd("nnoremap <c-h> <c-w>h")
vim.cmd("nnoremap <c-l> <c-w>l")

-- Resize split windows using arrow keys by pressing:
-- CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
vim.cmd("noremap <c-up> <c-w>+")
vim.cmd("noremap <c-down> <c-w>-")
vim.cmd("noremap <c-left> <c-w>>")
vim.cmd("noremap <c-right> <c-w><")

-- Open new tabs and navigate them with Shift + arrowkeys
--inoremap <S-l> <Esc>:tabnext<cr>
vim.cmd("nnoremap <S-l> :tabnext<cr>")
vim.cmd("nnoremap <S-h> :tabprevious<cr>")
vim.cmd("nnoremap <S-j> :tabclose<cr>")
vim.cmd("nnoremap <S-k> :tabnew<cr>")

-- WILDMENU -----------------------------------------------------------
-- Recursive file finding, very useful
vim.cmd("set path+=**")
vim.cmd("set wildmenu")
-- Wildmenu will ignore files with these extensions.
vim.cmd("set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx")

-- Show matching words during a search.
vim.cmd("set showmatch")
-- Use highlighting when doing a search.
vim.cmd("set hlsearch")

vim.cmd("set cursorline")


-- LSP virtual text
vim.diagnostic.config({ virtual_text = false, virtual_lines = { current_line = true }, })
