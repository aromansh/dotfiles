local keyset = vim.keymap.set
local opts = {silent = true, noremap = false}

-- Navigate buffers (inspired by Vimium controls)
keyset('n', '<S-j>', ':bprevious<CR>', opts)
keyset('n', '<S-k>', ':bnext<CR>', opts)

-- vim.keymap.set('n', '<S-j>', ':bprevious<CR>', opts)
-- vim.keymap.set('n', '<S-k>', ':bnext<CR>', opts)
-- Navigate splits
keyset('n', '<C-H>', '<C-W><C-H>', opts)
keyset('n', '<C-J>', '<C-W><C-J>', opts)
keyset('n', '<C-K>', '<C-W><C-K>', opts)
keyset('n', '<C-L>', '<C-W><C-L>', opts)

vim.cmd 'cnoreabbrev vs split'
vim.cmd 'cnoreabbrev hs vsplit'
