local autocmd = vim.api.nvim_create_autocmd -- for conciseness
local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false
-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = false

-- appearance
opt.termguicolors = true
opt.background = dark
opt.signcolumn = "yes"

-- cursor shape
vim.opt.guicursor = "n-v-c:block" -- Normal, Visual, Command modes
vim.opt.guicursor:append("a:block") -- All other modes (replace...)

-- remove auto commenting on new line
autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions:remove({ "c", "r", "o" })
	end,
	group = general,
	desc = "Disable New Line Comment",
})

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

vim.opt.fillchars:append({ eob = " " }) -- This sets empty lines to be shown as spaces

-- conceallevel for obsidian
vim.opt.conceallevel = 1
