require("mask")

-- Enable tokyo night
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
vim.cmd([[colorscheme tokyonight-night]])
