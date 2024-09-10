---@type ChadrcConfig
local M = {}

local opt = vim.opt
opt.cursorline = false
vim.cmd [[set nohidden]]
-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
M.ui = {
  theme = "chocolate",
  theme_toggle = { "chocolate", "one_light" },
  transparency = true,
  statusline = {
    theme = "vscode",
  },
  cmp= {
  style = "flat_dark",
  },
  tabufline = {
    enabled= false
  },
  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
