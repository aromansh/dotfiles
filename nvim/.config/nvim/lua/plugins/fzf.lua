-- junegunn/fzf
local keyset = vim.keymap.set

keyset('n', 'P', ':Files<CR>')
keyset('n', 'F', ':Rg<CR>')
