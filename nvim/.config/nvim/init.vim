call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lspconfig'
Plug 'sbdchd/neoformat'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telecope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'mae' }
call plug#end()

colorscheme gruvbox

lua << EOF
require'lspconfig'.tsserver.setup{}
EOF

set relativenumber
set nu
set nohlsearch
set exrc
set guicursor
set hidden
set noerrorbells
set shiftwidth=2
set tabstop=2 softtabstop=2
set smartindent
set noswapfile
set termguicolors
set scrolloff=8
set nowrap
set colorcolumn=80

inoremap jk <Esc>

let mapleader = " "
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>

