local wezterm = require("wezterm")

local config = {}

-- local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

-- The filled in variant of the > symbol
-- local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

-- config.tab_bar_style = {
-- active_tab_left = wezterm.format({
-- 	{ Background = { Color = "#0b0022" } },
-- 	{ Foreground = { Color = "#2b2042" } },
-- 	{ Text = SOLID_LEFT_ARROW },
-- }),
-- active_tab_right = wezterm.format({
-- 	{ Background = { Color = "#0b0022" } },
-- 	{ Foreground = { Color = "#2b2042" } },
-- 	{ Text = SOLID_RIGHT_ARROW },
-- }),
-- inactive_tab_left = wezterm.format({
-- 	{ Background = { Color = "#0b0022" } },
-- 	{ Foreground = { Color = "#1b1032" } },
-- 	{ Text = SOLID_LEFT_ARROW },
-- }),
-- inactive_tab_right = wezterm.format({
-- 	{ Background = { Color = "#0b0022" } },
-- 	{ Foreground = { Color = "#1b1032" } },
-- 	{ Text = SOLID_RIGHT_ARROW },
-- }),
-- }

config.enable_tab_bar = true
config.use_fancy_tab_bar = true
config.window_padding = {
	left = 0,
	right = 0,
	bottom = 0,
	top = 0,
}
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("Fira Code", { weight = "Medium" })
config.line_height = 1.15
-- wezterm.font('JetBrains Mono' )
config.font_size = 14.0

-- config.background = {
--     {
--         source = {
--             File = '/Users/riccardo/Pictures/image.png'
--         },
--         opacity = 0.8
--     }
-- }
config.macos_window_background_blur = 0
config.color_scheme = "Gruvbox Dark (Gogh)"
config.window_background_opacity = 1
-- config.window_background_image = '/Users/riccardo/Pictures/image.png'

-- config.keys = {
-- 	{
-- 		key = "r",
-- 		mods = "CMD|SHIFT",
-- 		action = wezterm.action.ReloadConfiguration,
-- 	},
-- }

return config
