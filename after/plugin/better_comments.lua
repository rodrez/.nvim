require("better-comment").Setup({
	tags = {
		-- TODO: This is a test
		--! BAD
		-- FIX
		-- WARNING
		-- IDEA
		{
			name = "TODO",
			fg = "yellow",
			bg = "",
			bold = true,
			virtual_text = "",
		},
		{
			name = "IDEA",
			fg = "cyan",
			bg = "",
			bold = true,
			virtual_text = "",
		},
		{
			name = "FIX",
			fg = "pink",
			bg = "",
			bold = true,
			virtual_text = "",
		},
		{
			name = "WARNING",
			fg = "#FFA500",
			bg = "",
			bold = false,
			virtual_text = "",
		},
		{
			name = "!",
			fg = "#f44747",
			bg = "",
			bold = true,
			virtual_text = "",
		},
	},
})
