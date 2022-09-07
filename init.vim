set nocompatible
filetype off
set relativenumber

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround' "Surrounding ysw)
call plug#end()

colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

filetype plugin indent on
syntax on
set colorcolumn=80
set background=dark
set nu
highlight ColorColumb ctermbg=0 guibg=lightgrey
set smartcase
set hlsearch
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set ai sw=4
set mouse=a
