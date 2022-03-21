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
"Plug 'vim-scripts/ide'

" Colorscheme
Plug 'https://github.com/arzg/vim-wizard'

" NerdTree
Plug 'scrooloose/nerdtree'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'airblade/vim-gitgutter' " git status at the left

" https://pragmaticpineapple.com/ultimate-vim-typescript-setup/
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

" Theme
Plug 'ayu-theme/ayu-vim'

Plug 'frazrepo/vim-rainbow'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""
" General configurations "
""""""""""""""""""""""""""

" Theme
"colorscheme wizard
let g:airline_theme='deus'

" Vim configs
set number
set shiftwidth=4
set tabstop=4
au BufRead,BufNewFile *.md set textwidth=80

" NERDTree Specific mappings
let g:NERDTreeMapToggleBookmarks= ''
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
map B :NERDTreeFocus<CR>

" Fzf
map P :Files<CR>
map F :Rg<CR>

" DevIcons
set encoding=UTF-8

" Gitgutter
set updatetime=100

" Ayu theme
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

filetype plugin on
syntax on

" Color brackets
let g:rainbow_active = 1
