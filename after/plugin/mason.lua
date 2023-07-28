local mason = require("mason")

mason.setup({
	ensure_installed = {
		"debugpy",
		"lua-language-server",
		"black",
		"mypy",
		"pyrigth",
		"ruff",
	},
})
