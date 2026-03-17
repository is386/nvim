return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '▎' },
        change = { text = '▎' },
        delete = { text = '━━' },
        topdelete = { text = '━━' },
        changedelete = { text = '▎' },
      },
      preview_config = {},
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
      { '<leader>gr', function() require('gitsigns').reset_hunk() end, desc = 'Git Reset Hunk' },
      { '<leader>gb', function() require('gitsigns').blame_line() end, desc = 'Git Blame Line' },
      {
        '<leader>gD',
        function()
          require('gitsigns').diffthis()
          vim.keymap.set('n', '<Esc>', function()
            vim.cmd 'diffoff!'
            vim.cmd 'only'
            RestoreEsc()
          end, { desc = 'Close Diff' })
        end,
        desc = 'Git Diff',
      },
      {
        '<leader>gi',
        function()
          require('gitsigns').preview_hunk_inline()
          vim.keymap.set('n', '<Esc>', function()
            vim.api.nvim_exec_autocmds('CursorMoved', { buffer = 0 })
            RestoreEsc()
          end, { desc = 'Dismiss Preview' })
        end,
        desc = 'Git Preview Inline',
      },
    },
  },
}
