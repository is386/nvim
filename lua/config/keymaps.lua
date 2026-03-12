vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


vim.keymap.set('n', '<leader>dd', '<cmd>belowright split<CR>', { desc = 'Down' })
vim.keymap.set('n', '<leader>dr', '<cmd>belowright vsplit<CR>', { desc = 'Right' })
vim.keymap.set('n', '<leader>du', '<cmd>above split<CR>', { desc = 'Up' })
vim.keymap.set('n', '<leader>dl', '<cmd>leftabove vsplit<CR>', { desc = 'Left' })
vim.keymap.set('n', '<leader>w', '<cmd>close<CR>', { desc = 'Close' })

vim.keymap.set('n', '<leader><Left>', '<C-w>h', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Down>', '<C-w>j', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Up>', '<C-w>k', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader><Right>', '<C-w>l', { desc = 'which_key_ignore' })
