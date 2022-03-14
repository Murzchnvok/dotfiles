local background = vim.opt.background:get()
local configuration = vim.fn['gruvbox_material#get_configuration']()
local palette = vim.fn['gruvbox_material#get_palette'](background, configuration.palette)

theme = {
  normal = {
    a = { bg = palette.grey2[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  insert = {
    a = { bg = palette.bg_green[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  visual = {
    a = { bg = palette.bg_red[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  replace = {
    a = { bg = palette.bg_yellow[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  command = {
    a = { bg = palette.blue[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  terminal = {
    a = { bg = palette.purple[1], fg = palette.bg0[1], gui = 'bold' },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  },
  inactive = {
    a = { bg = palette.bg_statusline2[1], fg = palette.grey2[1] },
    b = { bg = palette.bg0[1], fg = palette.grey2[1] },
    c = { bg = palette.bg0[1], fg = palette.grey2[1] }
  }
}

local settings = {
  lualine_a = {
    {
      'mode',
      fmt = function(str) return str:sub(1,1) end
    }
  },
  lualine_b = {
    {
      'diagnostics',
      -- symbols = { error = 'E', warn = 'W', info = 'I', hint = 'H' },
      diagnostics_color = {
        error = { fg = palette.red[1], gui = 'bold' },
        warn = { fg = palette.yellow[1], gui = 'bold' },
        info = { fg = palette.blue[1], gui = 'bold' },
        hint = { fg = palette.green[1], gui = 'bold' },
      },
      colored = true,
      -- always_visible = true
    }
  },
  lualine_c = {
    {
      'buffers',
      show_filename_only = false,
      show_modified_status = true,
      buffers_color = {
        active = { fg = palette.grey1[1], gui = 'bold' },
        inactive = { fg = palette.grey0[1], gui = 'bold' },
      }
    }
  },
  lualine_x = {},
  lualine_y = { 'branch', 'diff' },
  lualine_z = { 'location' },
}

require('lualine').setup({
  options = {
    theme = theme,
    section_separators = '',
    component_separators = '',
    disabled_filetypes = { 'NvimTree' }
  },
  sections = settings,
  inactive_sections = settings
})
