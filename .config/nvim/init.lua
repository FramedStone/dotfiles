vim.cmd("colorscheme codedark") -- set default colorscheme

-- nvim
require("framedstone.core.keymaps")
require("framedstone.core.options")

-- plugins
require("framedstone.plugins-setup")
require("framedstone.plugins.comment")
require("framedstone.plugins.nvim-tree")
require("framedstone.plugins.lualine")
require("framedstone.plugins._telescope")
require("framedstone.plugins.autopairs")
require("framedstone.plugins.treesitter")
require("framedstone.plugins.gitsigns")
require("framedstone.plugins.cappucin")
require("framedstone.plugins.nvim-cmp")
require("framedstone.plugins.lsp.mason")
require("framedstone.plugins.lsp.lspconfig")
require("framedstone.plugins.lsp.null-ls")
require("framedstone.plugins.obsidian")
require("framedstone.plugins.chatgpt")

-- keymaps (plugins)
require("framedstone.plugins.keymaps.maximizer-keymaps")
require("framedstone.plugins.keymaps.nvim-tree-keymaps")
require("framedstone.plugins.keymaps.telescope-keymaps")
