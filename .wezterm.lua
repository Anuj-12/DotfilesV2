-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.window_decorations = "RESIZE"
config.enable_tab_bar = false

-- Color Scheme
--config.color_scheme = "Ef-Maris-Dark"
--config.color_scheme = "Firewatch"
--config.color_scheme = "Galizur"
config.color_scheme = "Gooey (Gogh)"

config.window_background_opacity = 0.75

-- Font
config.text_background_opacity = 1.0

config.scrollback_lines = 100

config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = '"',
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = ":",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "w",
		mods = "ALT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},

	{
		key = "h",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Left" }),
	},

	{
		key = "l",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Right" }),
	},

	{
		key = "k",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Up" }),
	},

	{
		key = "j",
		mods = "ALT",
		action = wezterm.action({ ActivatePaneDirection = "Down" }),
	},
}

config.inactive_pane_hsb = { -- Looks of the inactive pane
	saturation = 0.65,
	brightness = 0.3,
}

-- and finally, return the configuration to wezterm
return config
