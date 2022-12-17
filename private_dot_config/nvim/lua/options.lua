vim.opt.hidden = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = false

vim.opt.scrolloff = 8
vim.opt.cindent = true
vim.opt.laststatus = 3

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.updatetime = 100

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- gui/neovide stuff
if vim.g.neovide then
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    vim.g.neovide_cursor_vfx_particle_density = 50
end

