require("catppuccin").setup {
	flavour = "mocha",
	term_colors = true,
	transparent_background = true,
	color_overrides = {
		mocha = {
			base = "#000000",
			crust = "#010101",
			mantle = "#020202",
		},
	},
	dim_inactive = {
		enable = true,
		shade = "dark",
		percentage = 0.15,
	},
	highlight_overrides = {
		all = function(C)
			return {
				TabLineSel = { bg = C.green },
				NvimTreeNormal = { bg = C.none },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				NormalFloat = { bg = C.none },
				-- custom selection highlight
				Selection = { bg = C.surface1, fg = C.text },
				-- borders
				FloatBorder = { fg = C.overlay0 },
				LspInfoBorder = { link = "FloatBorder" },
				NvimTreeWinSeparator = { link = "FloatBorder" },
				WhichKeyBorder = { link = "FloatBorder" },
				-- telescope
				TelescopeBorder = { link = "FloatBorder" },
				TelescopeTitle = { fg = C.green },
				TelescopeSelection = { link = "Selection" },
				TelescopeSelectionCaret = { link = "Selection" },
				-- pmenu
				PmenuSel = { link = "Selection" },
			}
		end,
	},
	integrations = {
		cmp = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		telescope = true,
		bufferline = true,
		ts_rainbow = true,
		markdown = true,
	}
}

vim.cmd.colorscheme "catppuccin"
