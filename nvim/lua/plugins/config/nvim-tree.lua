require("nvim-tree").setup({
	actions = {
		open_file = {
			resize_window = true,
		},
	},

	diagnostics = {
		enable = true,
		show_on_dirs = true,
		icons = {
			error = "E",
			warning = "W",
			info = "I",
			hint = "H",
		},
	},

	renderer = {
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
	},

	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = {},
	},

	view = {
		hide_root_folder = true,
		signcolumn = "yes",
	},
})
