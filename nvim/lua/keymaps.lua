local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '

map('i', 'jj', '<Esc>', opts)

map('n', '<C-q>', ':q<CR>', opts)

map('n', '<C-s>', ':w<CR>', opts)
map('i', '<C-s>', '<Esc>:w<CR>', opts)

map('n', '<Up>', ':resize -1<CR>', opts)
map('n', '<Down>', ':resize +1<CR>', opts)
map('n', '<Left>', ':vertical resize -1<CR>', opts)
map('n', '<Right>', ':vertical resize +1<CR>', opts)

map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

map('n', '<A-j>', ':m .+1<CR>', opts)
map('n', '<A-k>', ':m .-2<CR>', opts)

map('n', '<C-i>', ':Neoformat<CR>', opts)

map('n', '<C-n>', ':NvimTreeToggle<CR>', opts)
map('n', '<Leader>r', ':NvimTreeRefresh<CR>', opts)

map('n', '<Leader>bd', ':bd<CR>', opts)
map('n', '<Leader>bn', ':bn<CR>', opts)
map('n', '<Leader>bp', ':bp<CR>', opts)

map('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
map('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
map('n', '<Leader>fb', ':Telescope buffers<CR>', opts)
map('n', '<Leader>fh', ':Telescope help_tags<CR>', opts)
