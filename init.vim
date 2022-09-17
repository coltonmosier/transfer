set nocompatible
filetype on
set relativenumber

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox' "theme
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'tpope/vim-fugitive' "no clue
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} "filetree
Plug 'preservim/nerdtree' "filetree pt.2
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'hrsh7th/nvim-compe'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
call plug#end()

colorscheme gruvbox

nnoremap <SPACE> <nop>
let mapleader = " "
let g:NERDTreeQuitOnOpen = 1
map <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" inoremap <silent><expr> <c-space> coc#refresh()
" inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : '\<Tab>"
" inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : '\<S-Tab>"
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : '\<CR>"

" nvim-lspconfig
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-,> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

" auto format
autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.bash lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.sh lua vim.lsp.buf.formatting_sync(nil, 100)

luafile ~/.config/nvim/lua/lsp/mason-ls.lua
luafile ~/.config/nvim/lua/plugins/compe-config.lua
luafile ~/.config/nvim/lua/lsp/bash-ls.lua
luafile ~/.config/nvim/lua/lsp/clang-ls.lua
luafile ~/.config/nvim/lua/lsp/docker-ls.lua
luafile ~/.config/nvim/lua/lsp/go-ls.lua
luafile ~/.config/nvim/lua/lsp/java-ls.lua
luafile ~/.config/nvim/lua/lsp/python-ls.lua





filetype plugin indent on
syntax on
set background=dark
set colorcolumn=80
set nu
highlight ColorColumb ctermbg=0 guibg=lightgrey
set smartcase
" set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set ai sw=4
set mouse=a
autocmd FileType make setlocal noexpandtab
autocmd FileType json syntax match Comment +\/\/.\+$+

