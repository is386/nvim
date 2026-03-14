return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VimEnter',
    ---@module 'which-key'
    ---@type wk.Opts
    ---@diagnostic disable-next-line: missing-fields
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
          { '<leader>i', group = 'LSP' },
        },
      }
    end,
  },
}
