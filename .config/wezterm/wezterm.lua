-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",

	-- open wezterm at maximized screen (not full screen)
	initial_cols = 210,
	initial_rows = 70,

	-- font
	font_size = 14.5,

	-- cursor color
	colors = {
		cursor_bg = "#bfbfbf",
	},

	background = {
		{
			source = {
				File = "/Users/leeweixuan/Pictures/wezterm-wallpaper.jpg", -- interstellar planet
				-- File = "/Users/leeweixuan/Pictures/wezterm-wallpaper.gif", -- ocean with evening sun (light)
				-- File = "/Users/leeweixuan/Pictures/wezterm-wallpaper-1.gif", -- ocean with evening sun (dimmer)
			},
			hsb = {
				hue = 1.0,
				saturation = 1.0,
				brightness = 0.1,
			},
			width = "100%",
			height = "100%",
		},
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.1,
		},
	},
	window_padding = {
		left = 10,
		right = 0,
		top = 10,
		bottom = 0,
	},
}

-- keybinds
local act = wezterm.action
config.keys = {
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "CMD|SHIFT",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		key = "m",
		mods = "CMD|SHIFT",
		action = act.TogglePaneZoomState,
	},
	{
		key = "s",
		mods = "CMD|SHIFT",
		action = act.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	-- switch between active panes
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
}

return config
