vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- opens the Explorer

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "gd", "gdzz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without overriding register
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Need to figure this one out
-- vim.keymap.set({"n", "v"}, [["+y]])
-- vim.keymap.set({"n", "<leader>Y"}, [["+Y]])
--

-- Map esc to C-c
vim.keymap.set("i", "<C-c>", "<Esc>")

--
