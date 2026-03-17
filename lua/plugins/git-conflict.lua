return {
  {
    'akinsho/git-conflict.nvim',
    version = '*',
    event = 'VeryLazy',
    opts = {
      default_mappings = false,
    },
    keys = {
      { '<leader>cc', '<Plug>(git-conflict-ours)', desc = 'Git Conflict: Choose Current' },
      { '<leader>ci', '<Plug>(git-conflict-theirs)', desc = 'Git Conflict: Choose Incoming' },
      { '<leader>cb', '<Plug>(git-conflict-both)', desc = 'Git Conflict: Choose Both' },
      { '<leader>c0', '<Plug>(git-conflict-none)', desc = 'Git Conflict: Choose None' },
      { '<leader>cn', '<Plug>(git-conflict-next-conflict)', desc = 'Git Conflict: Next' },
      { '<leader>cp', '<Plug>(git-conflict-prev-conflict)', desc = 'Git Conflict: Previous' },
    },
  },
}
