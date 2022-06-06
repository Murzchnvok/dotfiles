local background = vim.opt.background:get()
local configuration = vim.fn["gruvbox_material#get_configuration"]()
local palette = vim.fn["gruvbox_material#get_palette"](background, configuration.palette, configuration.colors_override)

theme = {
	normal = {
		a = { bg = palette.grey2[1], fg = palette.bg0[1], gui = "bold" },
		b = { bg = palette.bg0[1], fg = palette.grey2[1] },
		c = { bg = palette.bg0[1], fg = palette.grey2[1] },
		x = { bg = palette.bg0[1], fg = palette.grey2[1], gui = "italic" },
		y = { bg = palette.bg0[1], fg = palette.grey2[1] },
		z = { bg = palette.bg0[1], fg = palette.grey2[1] },
	},
	insert = {
		a = { bg = palette.green[1], fg = palette.bg0[1], gui = "bold" },
	},
	visual = {
		a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = "bold" },
	},
	replace = {
		a = { bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = "bold" },
	},
	command = {
		a = { bg = palette.blue[1], fg = palette.bg0[1], gui = "bold" },
	},
	terminal = {
		a = { bg = palette.purple[1], fg = palette.bg0[1], gui = "bold" },
	},
	inactive = {
		a = { bg = palette.bg_statusline2[1], fg = palette.grey2[1] },
	},
}

local settings = {
	lualine_a = {
		{
			"mode",
			fmt = function(str)
				return str:sub(1, 1)
			end,
		},
	},
	lualine_b = {
		{
			"branch",
			color = { fg = palette.purple[1], gui = "bold" },
		},
		{
			"diff",
			colored = true,
			diff_color = {
				added = { fg = palette.green[1], gui = "bold" },
				modified = { fg = palette.yellow[1], gui = "bold" },
				removed = { fg = palette.red[1], gui = "bold" },
			},
			symbols = { added = "+", modified = "~", removed = "-" },
		},
		{
			"diagnostics",
			symbols = { error = "▎", warn = "▎", info = "▎", hint = "▎" },
			diagnostics_color = {
				error = { fg = palette.red[1], gui = "bold,italic" },
				warn = { fg = palette.yellow[1], gui = "bold,italic" },
				info = { fg = palette.blue[1], gui = "bold,italic" },
				hint = { fg = palette.aqua[1], gui = "bold,italic" },
			},
		},
	},
	lualine_c = {
		{
			"buffers",
			hide_filename_extension = false,
			show_filename_only = false,
			show_modified_status = true,
			buffers_color = {
				active = { fg = palette.grey2[1], gui = "bold" },
				inactive = { fg = palette.grey0[1], gui = "bold" },
			},
		},
	},
	lualine_x = { "%l:%c  ▎ %L" },
	lualine_y = {},
	lualine_z = {},
}

require("lualine").setup({
	options = {
		theme = theme,
		section_separators = "",
		component_separators = "",
		disabled_filetypes = { "NvimTree" },
	},
	sections = settings,
	inactive_sections = settings,
})
