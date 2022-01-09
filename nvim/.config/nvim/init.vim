call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'EdenEast/nightfox.nvim'

call plug#end()

colorscheme nightfox
