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

	{ "folke/neoconf.nvim",                     cmd = "Neoconf" },
	-- Themes
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	-- Must haves
	{ "nvim-treesitter/nvim-treesitter",        run = ":TSUpdate" },
	{ "nvim-treesitter/nvim-treesitter-context" },
    { "theprimeagen/harpoon" },
    { "theprimeagen/refactoring.nvim" },
    { "theprimeagen/vim-with-me" },
     {
          'nvim-telescope/telescope.nvim', 
          dependencies = { 'nvim-lua/plenary.nvim'}
      },
	-- find the keys
	{ "folke/which-key.nvim",                   lazy = true },
	{ "folke/trouble.nvim",                     lazy = true },
	{ "folke/zen-mode.nvim",                    lazy = true },
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		},
		config = function()
			require('lsp-zero').setup()
		end,
	},
}

require("lazy").setup(plugins, {})
