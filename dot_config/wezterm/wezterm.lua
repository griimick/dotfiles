local wezterm = require("wezterm")
local c = wezterm.config_builder()
local utils = require("config.utils")

require("config.keys").apply(c)

c.front_end = "WebGpu"
c.font_size = 13
c.harfbuzz_features = { "calt=1", "ss01=1" }
c.command_palette_font_size = c.font_size * 1.1
c.window_frame = {
	font_size = c.font_size,
}

c.window_decorations = "RESIZE"
c.window_padding = { left = 0, right = 0, top = 50, bottom = 0 }
c.adjust_window_size_when_changing_font_size = false
c.audible_bell = "Disabled"
c.default_cursor_style = "BlinkingBar"
c.inactive_pane_hsb = { brightness = 0.90 }

wezterm.plugin.require("https://github.com/nekowinston/wezterm-bar").apply_to_config(c, {
	max_width = 32,
	dividers = "arrows",
})

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

utils.tableMerge(c, {
	color_schemes = {
		["OLEDppuccin"] = custom,
	},
	color_scheme = "OLEDppuccin",
})

return c
