vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><cmd>w<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', 'H', '^', { desc = 'Go to first non-blank character' })
vim.keymap.set('n', 'L', '$', { desc = 'Go to end of line' })

vim.keymap.set('n', '<leader>dd', '<cmd>belowright split<CR>', { desc = 'Down' })
vim.keymap.set('n', '<leader>dr', '<cmd>belowright vsplit<CR>', { desc = 'Right' })
vim.keymap.set('n', '<leader>du', '<cmd>above split<CR>', { desc = 'Up' })
vim.keymap.set('n', '<leader>dl', '<cmd>leftabove vsplit<CR>', { desc = 'Left' })
vim.keymap.set('n', '<leader>w', '<cmd>close<CR>', { desc = 'Close' })
vim.keymap.set('n', '<leader>q', '<cmd>qa<CR>', { desc = 'Quit' })

vim.keymap.set('n', '<leader>ii', function()
  vim.lsp.buf.hover { border = 'rounded', max_width = 60 }
end, { desc = 'Info' })

vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'which_key_ignore' })
