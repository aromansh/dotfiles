require "plugins"
require "options"
require "mappings"

-- Dynamically find fish path and set as shell
local fish_path = vim.fn.system('which fish'):gsub('\n', '')
if fish_path and fish_path ~= '' then
  vim.opt.shell = fish_path
end
