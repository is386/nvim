vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictDetected',
  callback = function() vim.diagnostic.enable(false, { bufnr = vim.api.nvim_get_current_buf() }) end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictResolved',
  callback = function() vim.diagnostic.enable(true, { bufnr = vim.api.nvim_get_current_buf() }) end,
})

vim.api.nvim_create_autocmd('VimLeave', {
  desc = 'Restore terminal cursor on exit',
  callback = function() vim.opt.guicursor = 'a:ver1-blinkon1' end,
})
