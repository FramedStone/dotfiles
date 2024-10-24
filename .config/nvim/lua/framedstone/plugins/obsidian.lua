require("obsidian").setup({
	workspaces = {
		{
			name = "personal",
			path = "~/vaults/personal",

			-- `strict=true` here tells obsidian to use the `path` as the workspace/vault root,
			-- even though the actual Obsidian vault root may be `~/vaults/personal/`.
			strict = true,

			-- Overrides notes directory
			overrides = {
				notes_subdir = "notes",
			},
		},
	},
	completion = {
		nvim_cmp = true,
		-- trigger completion at 'x' characters
		min_chars = 4,
	},

	-- daily notes directory
	daily_notes = {
		folder = "notes/daily_notes",
		date_format = "%d-%m-%Y",
		default_tags = { "daily-notes" },
		template = "~/vaults/templates/daily_note.md",
	},

	mappings = {
		-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
		["gf"] = {
			action = function()
				return require("obsidian").util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
		-- Toggle check-boxes.
		["<leader>ch"] = {
			action = function()
				return require("obsidian").util.toggle_checkbox()
			end,
			opts = { buffer = true },
		},
		-- Smart action depending on context, either follow link or toggle checkbox.
		["<cr>"] = {
			action = function()
				return require("obsidian").util.smart_action()
			end,
			opts = { buffer = true, expr = true },
		},
	},

	-- "current_dir" - put new notes into current buffer directory
	-- "notes_subdir" - put new notes into default notes directory
	new_notes_location = "notes_subdir",

	-- Either 'wiki' or 'markdown'. !! Obsidian default = wiki !!
	preferred_link_style = "wiki",

	templates = {
		folder = "~/vaults/templates",
		date_format = "%d-%m-%Y",
		time_format = "%H:%M",
	},

	-- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
	-- URL it will be ignored but you can customize this behavior here.
	---@param url string
	follow_url_func = function(url)
		-- Open the URL in the default web browser.
		vim.fn.jobstart({ "open", url }) -- Mac OS
		-- vim.fn.jobstart({"xdg-open", url})  -- linux
		-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
		-- vim.ui.open(url) -- need Neovim 0.10.0+
	end,

	-- Optional, by default when you use `:ObsidianFollowLink` on a link to an image
	-- file it will be ignored but you can customize this behavior here.
	---@param img string
	follow_img_func = function(img)
		vim.fn.jobstart({ "qlmanage", "-p", img }) -- Mac OS quick look preview
		-- vim.fn.jobstart({"xdg-open", url})  -- linux
		-- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
	end,

	picker = {
		-- set preferred picker (telescope, fzf-lua...)
		name = "telescope.nvim",

		-- keymaps for picker !! not all pickers support all mappings !!
		note_mappings = {
			-- create new note from query
			new = "<Space>nn",
			-- insert new link to the selected note
			insert_link = "<Space>nl",
		},
		tag_mappings = {
			-- add tag(s) to the current note
			tag_note = "<Space>at",
			-- insert a tag at the current location
			insert_tag = "<Space>it",
		},
	},

	-- Optional, sort search results by "path", "modified", "accessed", or "created".
	-- The recommend value is "modified" and `true` for `sort_reversed`, which means, for example,
	-- that `:ObsidianQuickSwitch` will show the notes sorted by latest modified time
	sort_by = "modified",
	sort_reversed = true,

	-- Set the maximum number of lines to read from notes on disk when performing certain searches.
	search_max_lines = 1000,

	-- Optional, determines how certain commands open notes. The valid options are:
	-- 1. "current" (the default) - to always open in the current window
	-- 2. "vsplit" - to open in a vertical split if there's not already a vertical split
	-- 3. "hsplit" - to open in a horizontal split if there's not already a horizontal split
	open_notes_in = "hsplit",
})
