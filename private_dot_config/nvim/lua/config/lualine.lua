require("lualine").setup {
	options = {
		icons_enabled = false,
		theme = "catppuccin",
		globalstatus = true,
		section_separators = '',
		component_separators = '',
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "filetype" },
		lualine_y = {},
		lualine_z = { "location" },
	},
}
