local set = vim.opt
local g = vim.g
local cmd = vim.api.nvim_command
local eval = vim.api.nvim_eval

cmd('language en_US')
cmd('filetype plugin on')
cmd('syntax on')

if vim.fn.has('termguicolors') then
  set.termguicolors = true 
end

set.background = 'dark'
g['gruvbox_material_palette'] = 'mix'
g['gruvbox_material_statusline_style'] = 'mix'
-- g['gruvbox_material_enable_bold'] = 1
g['gruvbox_material_enable_italic'] = 1
g['gruvbox_material_diagnostic_text_highlight'] = 1
g['gruvbox_material_diagnostic_line_highlight'] = 1
g['gruvbox_material_diagnostic_virtual_text'] = 'colored'
g['gruvbox_material_sign_column_background'] = 'none'
cmd('colorscheme gruvbox-material')

g['nvim_tree_indent_markers'] = 1
g['nvim_tree_show_icons'] = eval('{ "git": 1, "folders": 0, "files": 1, "folder_arrows": 0 }')
cmd('hi NvimTreeSymlink guifg=#83a598')
cmd('hi NvimTreeFolderName guifg=#a89984 gui=bold')
cmd('hi NvimTreeEmptyFolderName guifg=#a89984')
cmd('hi NvimTreeOpenedFolderName guifg=#8ec07c gui=bold')
cmd('hi NvimTreeExecFile guifg=#b8bb26 gui=bold')
cmd('hi NvimTreeIndentMarker guifg=#8ec07c')
cmd('hi NvimTreeStatusLine guibg=#00000000')

cmd('hi StatusLine guibg=none')
cmd('hi StatusLineNC guibg=none guifg=none')

set.showmode = false

set.signcolumn = 'yes'
cmd('hi SignColumn guibg=none ctermbg=none')

set.clipboard = 'unnamedplus'

set.completeopt = { 'menu', 'menuone', 'noselect' }

set.fillchars = 'eob: '

set.number = true
set.relativenumber = true

set.hlsearch = false

set.ignorecase = true
set.smartcase = true

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

set.wrap = false
set.splitright = true
