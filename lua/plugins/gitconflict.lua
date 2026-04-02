vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictDetected',
  callback = function() vim.diagnostic.enable(false, { bufnr = vim.api.nvim_get_current_buf() }) end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictResolved',
  callback = function() vim.diagnostic.enable(true, { bufnr = vim.api.nvim_get_current_buf() }) end,
})

return {
  {
    'akinsho/git-conflict.nvim',
    version = '*',
    opts = {
      default_mappings = false,
      highlights = {
        current = 'GitConflictCurrent',
        incoming = 'GitConflictIncoming',
      },
    },
    event = { 'BufReadPre' },
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
