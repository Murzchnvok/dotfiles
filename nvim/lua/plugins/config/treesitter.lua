require("nvim-treesitter.configs").setup({
	autotag = {
		enable = true,
	},

	highlight = {
		disable = { "css", "html" },
		enable = true,
	},
})
