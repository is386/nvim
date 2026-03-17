return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    opts = function()
      return {
        delay = 0,
        icons = {
          mappings = true,
          rules = false,
          separator = '',
        },
        spec = {
          { '<leader>s', group = 'Search', mode = { 'n', 'v' } },
          { '<leader>g', group = 'Git' },
          { '<leader>d', group = 'Split' },
          { '<leader>i', group = 'Info' },
          { '<leader>c', group = 'Conflict' },
        },
      }
    end,
  },
}
