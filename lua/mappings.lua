require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local mapleader= " "

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('n', '<leader>t', ':NvimTreeToggle<CR>')

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
