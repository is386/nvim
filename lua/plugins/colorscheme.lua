return {
   {
    'gbprod/nord.nvim',
    priority = 1000,
    config = function()
      require('nord').setup {
        on_colors = function(colors) colors.polar_night.origin = '#22262F' end,
      }
      vim.cmd.colorscheme 'nord'
      vim.api.nvim_set_hl(0, '@comment', { fg = '#616e88', italic = false })
      vim.api.nvim_set_hl(0, 'Comment', { fg = '#616e88', italic = false })
      vim.api.nvim_set_hl(0, '@variable.parameter', { fg = '#D8DEE9' })
      vim.api.nvim_set_hl(0, 'TabLineSel', { fg = '#D8DEE9', bg = '#22262F' })
      vim.api.nvim_set_hl(0, 'TabLine', { fg = '#4C566A', bg = '#3B4252' })
      vim.api.nvim_set_hl(0, 'TabLineFill', { bg = '#3B4252' })
    end,
  },
}
