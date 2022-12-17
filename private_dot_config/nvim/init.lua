local present, _ = pcall(require, "impatient")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.laststatus = 3
vim.opt.termguicolors = truetransparent

local m = { "n", "t", "i" }

-- quicker window movement
vim.keymap.set(m, "<C-h>", [[<cmd>wincmd h<cr>]])
vim.keymap.set(m, "<C-j>", [[<cmd>wincmd j<cr>]])
vim.keymap.set(m, "<C-k>", [[<cmd>wincmd k<cr>]])
vim.keymap.set(m, "<C-l>", [[<cmd>wincmd l<cr>]])

local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if not present or vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "none" })
    vim.api.nvim_create_user_command("TSUpdate", "", {})
    vim.api.nvim_command "packadd packer.nvim"
    require "plugins"
    require("packer").sync()
end
