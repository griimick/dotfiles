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

local use = packer.use

use { "wbthomason/packer.nvim",
    cmd = {
        "PackerSnapshot",
        "PackerSnapshotRollback",
        "PackerSnapshotDelete",
        "PackerInstall",
        "PackerUpdate",
        "PackerSync",
        "PackerClean",
        "PackerCompile",
        "PackerStatus",
        "PackerProfile",
        "PackerLoad",
    },
}

use "lewis6991/impatient.nvim"
use "nvim-telescope/telescope.nvim"
use "max397574/better-escape.nvim"
use { "akinsho/toggleterm.nvim" }
use { "catppuccin/nvim", as = "catppuccin" }
use { 
    "nvim-treesitter/nvim-treesitter",
    run = function()
        local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
        ts_update()
    end,
}
