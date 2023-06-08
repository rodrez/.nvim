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

vim.g.mapleader = " " -- sets map leader to space

local plugins = {

-- find the keys
{ "folke/neoconf.nvim", cmd = "Neoconf" }, 
	"folke/neodev.nvim",

-- Themes
{
  "folke/tokyonigth.nvim",
  lazy = false,
  priority = 1000,
},

-- Must haves
{"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
{"nvim-treesitter/nvim-treesitter-configs"},
"nvim-treesitter/nvim-treesitter-context",
{"folke/which-key.nvim" , lazy = true},
{"folke/trouble.nvim" , lazy = true},
{"folke/zen-mode.nvim" },
 {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  --{'williamboman/mason.nvim'},
		  --{'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  },
  },

},
require("lazy").setup(plugins, opts)
