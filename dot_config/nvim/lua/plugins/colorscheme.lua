return {
	{
		"catppuccin/nvim",
		tag = "v1.10.0",
		lazy = false,
		name = "catppuccin",
		opts = {
			transparent_background = true,
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
