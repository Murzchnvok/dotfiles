vim.cmd([[
filetype plugin on
syntax on
if has('termguicolors')
  set termguicolors
endif

set background=dark
let g:gruvbox_material_palette = 'mix'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_statusline_style = 'mix'
colorscheme gruvbox-material

let g:nvim_tree_indent_markers = 1
let g:nvim_tree_show_icons = { 'git': 1, 'folders': 0, 'files': 1, 'folder_arrows': 0 }
highlight NvimTreeSymlink guifg=#83a598
highlight NvimTreeFolderName guifg=#a89984 gui=bold
highlight NvimTreeEmptyFolderName guifg=#a89984
highlight NvimTreeOpenedFolderName guifg=#8ec07c gui=bold
highlight NvimTreeExecFile guifg=#b8bb26 gui=bold
highlight NvimTreeIndentMarker guifg=#8ec07c
highlight NvimTreeStatusLine guibg=#00000000

let g:neoformat_enabled_python = [ 'black', 'isort' ]
let g:neoformat_run_all_formatters = 1
]])

local set = vim.opt

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
