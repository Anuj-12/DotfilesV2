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

config.window_background_opacity = 0.95

-- Font
config.text_background_opacity = 1.0

config.scrollback_lines = 100

config.keys = {
	-- This will create a new split and run your default program inside it
	{
		key = '"',
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = ":",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- and finally, return the configuration to wezterm
return config
