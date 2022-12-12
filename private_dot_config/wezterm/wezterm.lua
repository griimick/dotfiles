local wezterm = require 'wezterm'

local function numberStyle(number, script)
	local scripts = {
		superscript = {
			"\\u2070",
			"\\u00b9",
			"\\u00b2",
			"\\u00b3",
			"\\u2074",
			"\\u2075",
			"\\u2076",
			"\\u2077",
			"\\u2078",
			"\\u2079",
		},
		subscript = {
			"\\u2080",
			"\\u2081",
			"\\u2082",
			"\\u2083",
			"\\u2084",
			"\\u2085",
			"\\u2086",
			"\\u2087",
			"\\u2088",
			"\\u2089",
		},
	}
	local numbers = scripts[script]
	local number_string = tostring(number)
	local result = ""
	for i = 1, #number_string do
		local char = number_string:sub(i, i)
		local num = tonumber(char)
		if num then
			result = result .. numbers[num + 1]
		else
			result = result .. char
		end
	end
	return result
end

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local RIGHT_DIVIDER = utf8.char(0xe0bc)
	local colours = config.resolved_palette.tab_bar

	local active_tab_index = 0
	for _, t in ipairs(tabs) do
		if t.is_active == true then
			active_tab_index = t.tab_index
		end
	end

	-- local active_bg = colours.active_tab.bg_color
	local active_bg = config.resolved_palette.ansi[3]
	local active_fg = colours.background
	local inactive_bg = colours.inactive_tab.bg_color
	local inactive_fg = colours.inactive_tab.fg_color
	local new_tab_bg = colours.new_tab.bg_color

	local s_bg, s_fg, e_bg, e_fg

	if tab.tab_index == #tabs - 1 then
		if tab.is_active then
			s_bg = active_bg
			s_fg = active_fg
			e_bg = new_tab_bg
			e_fg = active_bg
		else
			s_bg = inactive_bg
			s_fg = inactive_fg
			e_bg = new_tab_bg
			e_fg = inactive_bg
		end
	elseif tab.tab_index == active_tab_index - 1 then
		s_bg = inactive_bg
		s_fg = inactive_fg
		e_bg = active_bg
		e_fg = inactive_bg
	elseif tab.is_active then
		s_bg = active_bg
		s_fg = active_fg
		e_bg = inactive_bg
		e_fg = active_bg
	else
		s_bg = inactive_bg
		s_fg = inactive_fg
		e_bg = inactive_bg
		e_fg = inactive_bg
	end

	local muxpanes = wezterm.mux.get_tab(tab.tab_id):panes()
	local count = #muxpanes == 1 and "" or #muxpanes

	return {
		{ Background = { Color = s_bg } },
		{ Foreground = { Color = s_fg } },
		{ Text = " " .. tab.tab_index + 1 .. ": " .. tab.active_pane.title .. numberStyle(count, "superscript") .. " " },
		{ Background = { Color = e_bg } },
		{ Foreground = { Color = e_fg } },
		{ Text = RIGHT_DIVIDER },
	}
end)

wezterm.on('update-status', function(window, pane)
	local palette = window:effective_config().resolved_palette
	local firstTabActive = window:mux_window():tabs_with_info()[1].is_active

	local RIGHT_DIVIDER = utf8.char(0xe0bc)
	local text = '   '

	if window:leader_is_active() then
		text = '   '
	end

	local divider_bg = firstTabActive and palette.ansi[3] or palette.tab_bar.inactive_tab.bg_color

	window:set_left_status(wezterm.format({
		{ Foreground = { Color = palette.background } },
		{ Background = { Color = palette.ansi[7] } },
		{ Text = text },
		{ Background = { Color = divider_bg } },
		{ Foreground = { Color = palette.ansi[7] } },
		{ Text = RIGHT_DIVIDER },
	}))
end)

-- OLEDppuccin/Voidppuccin supremacy
local custom = wezterm.color.get_builtin_schemes()['Catppuccin Mocha']
custom.background = "#000000"
custom.tab_bar.background = "#040404"
custom.tab_bar.inactive_tab.bg_color = "#0f0f0f"
custom.tab_bar.new_tab.bg_color = "#080808"

return {
	color_schemes = {
		['OLEDppuccin'] = custom,
	},
	color_scheme = 'OLEDppuccin',
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	enable_scroll_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	tab_max_width = 50,
	window_decorations = "RESIZE",
	adjust_window_size_when_changing_font_size = false,
	window_background_opacity = 0.95,
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 0,
	},
	inactive_pane_hsb = {
		saturation = 1.0,
		brightness = 0.8,
	},
	clean_exit_codes = { 130 },
	max_fps = 144,
	audible_bell = "Disabled",
}
