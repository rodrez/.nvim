local mason = require("mason")

mason.setup({
	ensure_installed = {
		-- lua
		"lua-language-server",
		-- python
		"debugpy",
		"black",
		"mypy",
		"pyright",
		"ruff",
		-- C++
		"clangd",
		"clang-format",
	},
})
