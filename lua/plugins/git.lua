return {
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    ---@module 'gitsigns'
    ---@type Gitsigns.Config
    ---@diagnostic disable-next-line: missing-fields
    opts = {
      signs = {
        add = { text = '▎' }, ---@diagnostic disable-line: missing-fields
        change = { text = '▎' }, ---@diagnostic disable-line: missing-fields
        delete = { text = '━━' }, ---@diagnostic disable-line: missing-fields
        topdelete = { text = '━━' }, ---@diagnostic disable-line: missing-fields
        changedelete = { text = '▎' }, ---@diagnostic disable-line: missing-fields
      },
    },
    config = function(_, opts)
      require('gitsigns').setup(opts)
      vim.api.nvim_set_hl(0, 'GitSignsAddPreview', { bg = '#2a3d2e' })
      vim.api.nvim_set_hl(0, 'GitSignsAddInline', { bg = '#3a5e42' })
      vim.api.nvim_set_hl(0, 'GitSignsChangeInline', { bg = '#3a5e42' })
      vim.api.nvim_set_hl(0, 'GitSignsDeleteVirtLn', { bg = '#3d2a2d' })
      vim.api.nvim_set_hl(0, 'GitSignsDeleteVirtLnInLine', { bg = '#5e3a3a' })
    end,
    keys = {
      {
        '<leader>gp',
        function()
          local winid = require('gitsigns').preview_hunk_inline()
          vim.keymap.set('n', '<Esc>', function()
            vim.api.nvim_exec_autocmds('CursorMoved', { buffer = 0 })
            vim.keymap.del('n', '<Esc>')
          end, { desc = 'Dismiss hunk preview' })
        end,
        desc = 'Preview Inline',
      },
    },
  },
}
