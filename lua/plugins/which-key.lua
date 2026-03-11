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
          { '<leader>c', group = 'Conform' },
          { '<leader>t', group = 'Typescript' },
          { '<leader>g', group = 'Git' },
          { '<leader>h', group = 'Git Hunk', mode = { 'n', 'v' } },
          { '<leader>l', group = 'LSP' },
        },
      }
    end,
  },
}
