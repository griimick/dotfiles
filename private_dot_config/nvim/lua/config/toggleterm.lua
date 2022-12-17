local toggleterm = require("toggleterm")

toggleterm.setup({
    size = 20,
    open_mapping = "<C-`>",
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({
    cmd = "lazygit",
    direction = "float",
    hidden = true,
})
vim.api.nvim_create_user_command("Git", function()
    lazygit:toggle()
end, {})
