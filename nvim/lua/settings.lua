local set = vim.opt
local g = vim.g
local cmd = vim.api.nvim_command
local eval = vim.api.nvim_eval

cmd('filetype plugin on')
cmd('syntax on')

if vim.fn.has('termguicolors') then
  set.termguicolors = true 
end

set.background = 'dark'
g['gruvbox_material_palette'] = 'mix'
g['gruvbox_material_enable_bold'] = 1
g['gruvbox_material_diagnostic_line_highlight'] = 0
g['gruvbox_material_statusline_style'] = 'mix'
cmd('colorscheme gruvbox-material')

g['nvim_tree_indent_markers'] = 1
g['nvim_tree_show_icons'] = eval('{ "git": 1, "folders": 0, "files": 1, "folder_arrows": 0 }')

g['neoformat_enable_python'] = eval('[ "black", "isort" ]')
g['neoformat_run_all_formatters'] = 1

cmd('highlight NvimTreeSymlink guifg=#83a598')
cmd('highlight NvimTreeFolderName guifg=#a89984 gui=bold')
cmd('highlight NvimTreeEmptyFolderName guifg=#a89984')
cmd('highlight NvimTreeOpenedFolderName guifg=#8ec07c gui=bold')
cmd('highlight NvimTreeExecFile guifg=#b8bb26 gui=bold')
cmd('highlight NvimTreeIndentMarker guifg=#8ec07c')
cmd('highlight NvimTreeStatusLine guibg=#00000000')

set.showmode = false

set.completeopt = { 'menu', 'menuone', 'noselect' }

set.fillchars='eob: '

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
