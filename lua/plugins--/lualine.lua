return {
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'nord',
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { { 'filename', symbols = { modified = ' ●' } } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
