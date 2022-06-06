local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use("lewis6991/impatient.nvim")

	use("sainnhe/gruvbox-material")

	use("windwp/nvim-autopairs")

	use({
		"nvim-treesitter/nvim-treesitter",
		requires = {
			"windwp/nvim-ts-autotag",
		},
		run = ":TSUpdate",
	})

	use({
		"neovim/nvim-lspconfig",
		requires = {
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
			"ray-x/lsp_signature.nvim",
			"williamboman/nvim-lsp-installer",
			"aca/emmet-ls",
			"j-hui/fidget.nvim",
			"simrat39/rust-tools.nvim",
		},
	})

	use({ "mfussenegger/nvim-dap", requires = { "rcarriga/nvim-dap-ui" } })

	use("mhartington/formatter.nvim")

	use("numToStr/Comment.nvim")

	use("lewis6991/gitsigns.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
	})

	use("nvim-lualine/lualine.nvim")

	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
