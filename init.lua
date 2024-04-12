require("mask")

-- Enable tokyo night
-- vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.cmd([[colorscheme tokyonight-night]])

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

vim.filetype.add({
	extension = {
		templ = "jinja",
	},
})

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})
