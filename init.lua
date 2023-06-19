require("mask")

-- Enable tokyo night
vim.cmd([[colorscheme tokyonight]])
vim.cmd([[au TextYankPost * silent! lua vim.highlight.on_yank()]])
