require("bufferline").setup {
	options = {
		left_mouse_command = "buffer %d",
		middle_mouse_command = "bdelete! %d",
		right_mouse_command = nil,
		show_tab_indicators = false,
		indicator = {
			style = "underline",
		},
		show_close_icon = false,
		show_buffer_close_icons = false,
		separator_style = {'', ''},
	},
}

-- hop between buffers in order of the bar
vim.keymap.set("n", "<A-,>", "<Cmd>BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<A-.>", "<Cmd>BufferLineCycleNext<CR>")
-- Goto buffer in position...
vim.keymap.set("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n", "<leader>$", "<Cmd>BufferLineGoToBuffer -1<CR>")
