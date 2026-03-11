vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


vim.keymap.set('n', '<leader>dd', '<cmd>split<CR>', { desc = 'Down' })
vim.keymap.set('n', '<leader>dr', '<cmd>vsplit<CR>', { desc = 'Right' })
vim.keymap.set('n', '<leader>dw', '<cmd>close<CR>', { desc = 'Close' })

vim.keymap.set('n', '<leader><Left>', '<C-w>h', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Down>', '<C-w>j', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Up>', '<C-w>k', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Right>', '<C-w>l', { desc = 'which_key_ignore' })
