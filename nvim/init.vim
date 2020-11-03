"""""""""""""""""""
" Vim-plug config "
"""""""""""""""""""

" Specify a directory for plugins For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C support ?
" Plug 'vim-scripts/c.vim'

" Java support
Plug 'vim-scripts/ide'

" Colorscheme
Plug 'https://github.com/arzg/vim-wizard'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""
" General configurations "
""""""""""""""""""""""""""

" Theme
colorscheme wizard
let g:airline_theme='deus'

" Vim configs
set number
set shiftwidth=4
set tabstop=4
au BufRead,BufNewFile *.md set textwidth=80
