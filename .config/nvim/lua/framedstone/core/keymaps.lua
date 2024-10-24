vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps
-- vim.o.timeoutlen = 200 -- keymap timeout

keymap.set("i", "<leader>jk", "<ESC>") -- switch to normal mode

-- back to previous buffer directory
keymap.set("n", "<leader>bb", ":b#<CR>")

-- indent
-- keymap.set("n", "<Tab>", ">>")
-- keymap.set("i", "<Tab>", "<C-o>>>")
-- keymap.set("v", "<Tab>", ">>")
--
-- -- deindent
-- keymap.set("n", "<leader><Tab>", "<<")
-- keymap.set("v", "<leader><Tab>", "<gv")
-- keymap.set("i", "<leader><Tab>", "<C-o><<")

-- highlight inner word (from start)
-- keymap.set("n", "<leader>hw", "viw")
-- keymap.set("v", "<leader>hw", "iw")

-- copy highlighed inner word in visual mode
-- keymap.set("v", "c", "y")
-- keymap.set("n", "c", "vy")

-- dehighlight word
keymap.set("n", "<leader>dh", ":nohl<CR>")

-- goto start of current line
keymap.set("n", "<leader>sl", "0") -- start line
keymap.set("n", "<leader>el", "$") -- end line

-- delete character without registering into register
keymap.set("n", "x", '"_x')

-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

-- resize windows
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sc", ":close<CR>") -- close current split window

-- resize windows !! vertical !!
keymap.set("n", "<leader>wl", ":vertical resize +10<CR>") -- expand to left
keymap.set("n", "<leader>wr", ":vertical resize -10<CR>") -- expand to right

-- resize windows !! horizontally !!
keymap.set("n", "<leader>wd", ":resize -10<CR>") -- expand downwards
keymap.set("n", "<leader>wu", ":resize +10<CR>") -- expand upwards

-- tabs management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close new tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- goto next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- goto previous tab
