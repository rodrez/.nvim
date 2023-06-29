--vim.opt.guicursor = ""
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- find out what this is

vim.opt.smartindent = true

vim.opt.wrap = false

-- Set a compatible clipboard manager
vim.o.clipboard = "unnamedplus"
if vim.loop.os_uname().sysname ~= "Darwin" then
	vim.clipboard = {
		copy = {
			["+"] = "win32yank.exe -i --crlf",
			["*"] = "win32yank.exe -i --crlf",
		},
		paste = {
			["+"] = "win32yank.exe -o --lf",
			["*"] = "win32yank.exe -o --lf",
		},
	}
end
