local present, packer = pcall(require, "packer")
if not present then return end

packer.init {
	auto_reload_compiled = true,
	compile_on_sync = true,
	git = { clone_timeout = 6000 },
	display = {
		open_fn = function() return require("packer.util").float { border = "single" } end,
	},
}

-- modified local use to easily require config
local use = function(plugin)
	return function(opts)
		opts = opts or {}
		if not opts[1] or vim.fn.isdirectory(vim.fn.expand(opts[1])) == 0 then opts[1] = plugin end
		if type(opts.config) == "string" then opts.config = "require'" .. opts.config .. "'" end
		if opts.setup then opts.opt = true end
		packer.use(opts)
	end
end

use "wbthomason/packer.nvim" {
	config = "plugins"
}
use "lewis6991/impatient.nvim" {}
-- LSP Configuration & Plugins
use 'neovim/nvim-lspconfig' {
	requires = {
		-- Automatically install LSPs to stdpath for neovim
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		-- Useful status updates for LSP
		'j-hui/fidget.nvim',
	},
	config = "config.lsp",
}
-- Autocompletion
use 'hrsh7th/nvim-cmp' {
	requires = {
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip'
	},
	config = "config.cmp",
}
use "nvim-lualine/lualine.nvim" {
	after = "catppuccin",
	config = "config.lualine",
}
use 'nvim-telescope/telescope.nvim' {
	requires = { 'nvim-lua/plenary.nvim' },
	config = "config.telescope",
}
use 'nvim-telescope/telescope-fzf-native.nvim' {
	run = 'make',
	cond = vim.fn.executable 'make' == 1
}
use "nvim-treesitter/nvim-treesitter" {
	run = function()
		pcall(require('nvim-treesitter.install').update { with_sync = true })
	end,
	config = "config.treesitter",
}
use "catppuccin/nvim" {
	as = "catppuccin",
	config = "config.catppuccin",
}
