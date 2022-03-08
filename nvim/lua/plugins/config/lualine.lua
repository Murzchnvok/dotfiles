local colors = {
  fg = '#d5c4a1',
  fg_alt = '#a89984'
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
      colored = false
    }
  },
  lualine_c = {
    {
      'buffers',
      show_filename_only = false,
      show_modified_status = true,
      buffers_color = {
        active = { fg = colors.fg, gui = 'bold' },
        inactive = { fg = colors.fg_alt, gui = 'bold' },
      }
    }
  },
  lualine_x = {},
  lualine_y = { 'branch', 'diff' },
  lualine_z = { 'location' },
}

require('lualine').setup({
  options = {
    theme = 'gruvbox-material',
    section_separators = '',
    component_separators = '',
    disabled_filetypes = { 'NvimTree' }
  },
  sections = settings,
  inactive_sections = settings
})
