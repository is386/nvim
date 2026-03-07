return {
  { -- Colorscheme.
    'gbprod/nord.nvim',
    priority = 1000,
    config = function()
      require('nord').setup {
        on_colors = function(colors) colors.polar_night.origin = '#22262F' end,
      }
      vim.cmd.colorscheme 'nord'
      vim.api.nvim_set_hl(0, '@comment', { fg = '#616e88', italic = false })
    end,
  },
}
