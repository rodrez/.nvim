-- es6 files are treated as js
vim.treesitter.language.register("javascript", "es6")

function GetExt()
	local path = vim.fn.expand("%")
	local ext
	for i in string.gmatch(path, "/") do
		ext = i
	end

	print(ext)
	return ext
end

GetExt()
