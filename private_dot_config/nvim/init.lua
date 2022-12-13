
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

local gg = require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'norcalli/nvim-colorizer.lua'

	if packer_bootstrap then
		require('packer').sync()
	end
end)

vim.opt.termguicolors = true

require 'colorizer'.setup {
	css = {
		RGB      = true;         -- #RGB hex codes
		RRGGBB   = true;         -- #RRGGBB hex codes
		names    = true;         -- "Name" codes like Blue
		RRGGBBAA = true;         -- #RRGGBBAA hex codes
		rgb_fn   = true;         -- CSS rgb() and rgba() functions
	}
}

return gg
