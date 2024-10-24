vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>fe", ":NvimTreeToggle<CR>") -- open file explorer
