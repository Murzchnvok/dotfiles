require("dapui").setup({
	sidebar = {
		elements = {
			{ id = "scopes", size = 0.25 },
			{ id = "breakpoints", size = 0.25 },
			{ id = "stacks", size = 0.25 },
			{ id = "watches", size = 0.25 },
		},
		size = 70,
		position = "left",
	},
	tray = {
		elements = {},
		size = 10,
		position = "bottom",
	},
	floating = {
		max_height = nil,
		max_width = nil,
		border = "single",
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 },
	render = {
		max_type_length = nil,
	},
})
