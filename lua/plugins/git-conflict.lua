return {
  {
    'akinsho/git-conflict.nvim',
    version = '*',
    event = 'VeryLazy',
    opts = {
      default_mappings = false,
      highlights = {
        current = 'DiffAdd',
        incoming = 'DiffDelete',
      },
    },
    keys = {
      { '<leader>cc', '<Plug>(git-conflict-ours)', desc = 'Conflict: Choose Current' },
      { '<leader>ci', '<Plug>(git-conflict-theirs)', desc = 'Conflict: Choose Incoming' },
      { '<leader>cb', '<Plug>(git-conflict-both)', desc = 'Conflict: Choose Both' },
      { '<leader>c0', '<Plug>(git-conflict-none)', desc = 'Conflict: Choose None' },
      { '<leader>cn', '<Plug>(git-conflict-next-conflict)', desc = 'Conflict: Next' },
      { '<leader>cp', '<Plug>(git-conflict-prev-conflict)', desc = 'Conflict: Previous' },
    },
  },
}
