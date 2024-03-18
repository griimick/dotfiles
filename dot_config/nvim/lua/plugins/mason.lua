return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"bash-language-server",
				"eslint-lsp",
				"lua-language-server",
			},
		},
	},
}
