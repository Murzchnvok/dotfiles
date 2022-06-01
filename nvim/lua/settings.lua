local set = vim.opt
local g = vim.g
local cmd = vim.api.nvim_command

cmd("language en_US")
cmd("filetype plugin on")
cmd("syntax on")

if vim.fn.has("termguicolors") then
	set.termguicolors = true
end

set.background = "dark"
g.gruvbox_material_palette = "mix"
g.gruvbox_material_statusline_style = "mix"
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_diagnostic_text_highlight = 1
g.gruvbox_material_diagnostic_line_highlight = 1
g.gruvbox_material_diagnostic_virtual_text = "colored"
g.gruvbox_material_sign_column_background = "none"
cmd("colorscheme gruvbox-material")

cmd("hi NvimTreeEmptyFolderName guifg=#a89984")
cmd("hi NvimTreeFolderIcon guifg=#a89984")
cmd("hi NvimTreeFolderName guifg=#a89984 gui=bold")
cmd("hi NvimTreeOpenedFolderName guifg=#e2cca9 gui=bold")

cmd("hi NvimTreeExecFile guifg=#b0b846 gui=bold")
cmd("hi NvimTreeSymlink guifg=#80aa9e gui=bold")

cmd("hi NvimTreeIndentMarker guifg=#a89984")

cmd("hi NvimTreeLspDiagnosticsError guifg=#f2594b")
cmd("hi NvimTreeLspDiagnosticsWarning guifg=#e9b143")
cmd("hi NvimTreeLspDiagnosticsInfo guifg=#80aa9e")
cmd("hi NvimTreeLspDiagnosticsHint guifg=#b0b846")

cmd("hi StatusLine guibg=none")
cmd("hi StatusLineNC guibg=none guifg=none")

cmd("hi DiagnosticVirtualTextError guifg=#f2594b gui=italic")
cmd("hi DiagnosticVirtualTextWarn guifg=#e9b143 gui=italic")
cmd("hi DiagnosticVirtualTextInfo guifg=#80aa9e gui=italic")
cmd("hi DiagnosticVirtualTextHint guifg=#8bba7f gui=italic")

cmd("hi TelescopeBorder guifg=#7c6f64")
cmd("hi TelescopeMatching guifg=#80aa9e")
cmd("hi TelescopeMultiSelection guifg=#b0b846")
cmd("hi TelescopeNormal guifg=#a89984")
cmd("hi TelescopePromptNormal guifg=#e2cca9 gui=italic")
cmd("hi TelescopePromptPrefix guifg=#80aa9e")
cmd("hi TelescopeResultsNormal guifg=#a89984")
cmd("hi TelescopeSelection guifg=#e2cca9")
cmd("hi TelescopeSelectionCaret guifg=#8bba7f")
cmd("hi TelescopeTitle guifg=#8bba7f gui=italic")

set.updatetime = 100

set.showmode = false

set.signcolumn = "yes"
cmd("hi SignColumn guibg=none ctermbg=none")

set.clipboard = "unnamedplus"

set.completeopt = { "menu", "menuone", "noselect" }

set.fillchars = "eob: "

set.number = true
set.relativenumber = true

set.hlsearch = true

set.ignorecase = true
set.smartcase = true

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

set.wrap = false
set.splitright = true
