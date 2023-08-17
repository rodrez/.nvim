--vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.nu = true
-- changes the color of the line number
vim.api.nvim_set_hl(0, "LineNr", { fg = "#565f89" })

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- find out what this is

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Set a compatible clipboard manager
vim.o.clipboard = "unnamedplus"
vim.g.netrw_banner = 0

local os_name = vim.loop.os_uname().sysname
if os_name ~= "Darwin" and os_name ~= "Linux" then
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

-- Set filetype to javascript for *.es6 files
vim.cmd([[
  augroup ES6FileType
  autocmd!
  autocmd BufNewFile,BufRead *.es6 set filetype=javascript
  augroup END
]])
