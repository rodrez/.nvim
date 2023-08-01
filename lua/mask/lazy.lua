-- All Plugins reside here
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stabel branch
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local function find_python()
	local os_name = vim.loop.os_uname().sysname
	local path
	if os_name ~= "Darwin" and os_name ~= "Linux" then
		path = "C:/Users/frodriguez/AppData/Local/nvim-data/mason/packages/debugpy/venv/Scripts/python"
	else
		path = "C:/Users/frodriguez/AppData/Local/nvim-data/mason/packages/debugpy/venv/bin/python"
	end
	return path
end

local plugins = {

	-- Themes
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	-- Must haves
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "theprimeagen/harpoon" },
	{ "theprimeagen/refactoring.nvim" },
	{ "theprimeagen/vim-be-good" },
	{ "tpope/vim-fugitive" },
	{ "mbbill/undotree" },
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	-- Debugging
	{
		"mfussenegger/nvim-dap",
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap" },
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function(_, opts)
			local path = find_python()
			require("dap-python").setup(path, opts)
		end,
	},
	{ "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
	{ "folke/zen-mode.nvim", lazy = true },

	-- Copilot
	{ "github/copilot.vim" },

	-- LSP
	{
		"VonHeikemen/lsp-zero.nvim",
		-- branch = "v1.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },
			{ "jay-babu/mason-null-ls.nvim" },
			--Formatting
			{ "jose-elias-alvarez/null-ls.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{
				"L3MON4D3/LuaSnip",
				dependencies = { "rafamadriz/friendly-snippets" },
			},
		},
	},
}

require("lazy").setup(plugins, {})
