local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline' -- Status bar
Plug 'vim-airline/vim-airline-themes'
-- Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
Plug ('junegunn/fzf', { ['do'] = function()
		vim.fn['fzf#install']()
	end 
})
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter' -- git status at the left
Plug 'APZelos/blamer.nvim'
Plug 'jparise/vim-graphql'
Plug 'fladson/vim-kitty' -- Syntax highlight for kitty conf file
Plug 'frazrepo/vim-rainbow' -- Rainbow brackets
Plug 'ayu-theme/ayu-vim' -- Cool theme
Plug ('neoclide/coc.nvim', { branch = 'release' })
Plug ('akinsho/bufferline.nvim', { tag = 'v3.*' })
vim.call('plug#end')

require 'plugins.vim-airline'
--require 'plugins.nerdtree'
require 'plugins.nvim-tree'
require 'plugins.fzf'
require 'plugins.vim-gitgutter'
require 'plugins.blamer-nvim'
require 'plugins.coc'
require 'plugins.vim-rainbow'
require 'plugins.ayu-vim'
require 'plugins.bufferline'
