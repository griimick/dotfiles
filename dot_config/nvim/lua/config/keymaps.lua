-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

vim.keymap.set("n", "<C-/>", function()
	Util.terminal(nil, { border = "rounded" })
end, { desc = "Term with border" })
