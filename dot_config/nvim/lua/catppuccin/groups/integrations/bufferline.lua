-- Shim for LazyVim compatibility with catppuccin v2.
-- LazyVim calls require("catppuccin.groups.integrations.bufferline").get() but v2 moved the
-- module to catppuccin.special.bufferline and renamed get() -> get_theme()().
-- Lua searches the nvim config lua/ dir before catppuccin's own package, so this file
-- intercepts the require and bridges the old API to the new one.
local M = {}
function M.get()
	return require("catppuccin.special.bufferline").get_theme()()
end
return M
