return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"stylua",
				"shellcheck",
				"shfmt",
				"bash-language-server",
				"eslint-lsp",
				"lua-language-server",
				"luacheck",
				"css-lsp",
			})
		end,
	},
}
