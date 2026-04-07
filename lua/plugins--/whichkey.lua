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
          { '<leader>s', group = 'search', mode = { 'n', 'v' } },
          { '<leader>g', group = 'git' },
          { '<leader>d', group = 'split' },
          { '<leader>i', group = 'info' },
          { '<leader>c', group = 'conflict' },
        },
      }
    end,
  },
}
