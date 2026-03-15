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
        '<leader>gg',
        function()
          require('gitsigns').preview_hunk_inline()
          vim.keymap.set('n', '<Esc>', function()
            vim.api.nvim_exec_autocmds('CursorMoved', { buffer = 0 })
            vim.keymap.del('n', '<Esc>')
          end, { desc = 'Dismiss hunk preview' })
        end,
        desc = 'Git Preview Inline',
      },
    },
  },
}
