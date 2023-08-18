-- nvim-tree/nvim-tree.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
    mappings = {
      custom_only = true,
      list = {
        --{ key = "u", action = "dir_up" },
        { key = "g", action = "edit" },
        { key = "o", action = "preview" },
        { key = "R", action = "refresh" },
        { key = "r", action = "rename" },
        { key = "d", action = "remove" }
      },
    },
  },
  renderer = {
    group_empty = true,
    icons = {
        padding = "  ",
        show = {
            folder_arrow = false,
            git = false
        }
    },
    highlight_git = true
  },
  filters = {
    dotfiles = false
  },
  git = {
      ignore = false
  }
})

-- Mappings
vim.keymap.set('n', 'B', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
