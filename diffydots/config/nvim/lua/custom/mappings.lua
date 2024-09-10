---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Save with Ctrl + S
map("n", "<C-s>", ":w<CR>", opts)
map("i", "<C-s>", "<Esc>:w<CR>a", opts)

-- Quit with Ctrl + Q
map("n", "<C-q>", ":q<CR>", opts)
map("i", "<C-q>", "<Esc>:q<CR>", opts)

return M
