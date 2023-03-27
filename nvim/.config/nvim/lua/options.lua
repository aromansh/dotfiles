-- General options
local set = vim.opt

set.number = true
set.shiftwidth = 4
set.tabstop = 4
set.expandtab = true
set.encoding = 'UTF-8'
set.termguicolors = true

vim.cmd 'au BufRead,BufNewFile *.md set textwidth=80'
vim.cmd 'filetype plugin on'
vim.cmd 'syntax on'

vim.o.clipboard = 'unnamedplus'

-- TODO: Add support for fish shell
-- See: https://github.com/dag/vim-fish#teach-a-vim-to-fish
