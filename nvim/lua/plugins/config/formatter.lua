local buf_name = vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))

require("formatter").setup({
	filetype = {
		c = {
			function()
				return {
					exe = "clang-format",
					args = { "-i --sort-includes --style=Google" },
					stdin = false,
				}
			end,
		},

		css = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--single-quote" },
					stdin = true,
				}
			end,
		},

		go = {
			function()
				return {
					exe = "gofmt",
					args = { "-w" },
					stdin = false,
				}
			end,

			function()
				return {
					exe = "goimports",
					args = { "-w" },
					stdin = false,
				}
			end,
		},

		html = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--double-quote" },
					stdin = true,
				}
			end,
		},

		javascript = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--single-quote" },
					stdin = true,
				}
			end,
		},

		javascriptreact = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--single-quote" },
					stdin = true,
				}
			end,
		},

		json = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--double-quote" },
					stdin = true,
				}
			end,
		},

		lua = {
			function()
				return {
					exe = "stylua",
					stdin = false,
				}
			end,
		},

		python = {
			function()
				return {
					exe = "black",
					args = { "-t py310" },
					stdin = false,
				}
			end,

			function()
				return {
					exe = "isort",
					stdin = false,
				}
			end,
		},

		rust = {
			function()
				return {
					exe = "rustfmt",
					stdin = false,
				}
			end,
		},

		typescript = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--single-quote" },
					stdin = true,
				}
			end,
		},

		typescriptreact = {
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", buf_name, "--single-quote" },
					stdin = true,
				}
			end,
		},
	},
})
