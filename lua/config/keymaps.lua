-- General
function RestoreEsc() vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR><cmd>w<CR>') end
RestoreEsc()

vim.keymap.set({ 'n', 'i' }, '<F1>', '<Nop>')
vim.keymap.set('n', 'H', '^', { desc = 'Go to first non-blank character' })
vim.keymap.set('n', 'L', '$', { desc = 'Go to end of line' })
vim.keymap.set('n', '<leader>q', '<cmd>qa<CR>', { desc = 'Quit' })

vim.keymap.set('n', '<leader>w', function()
  local wins = vim.tbl_filter(function(w) return vim.api.nvim_win_get_config(w).relative == '' end, vim.api.nvim_tabpage_list_wins(0))
  if #wins > 1 then
    vim.cmd 'close'
  else
    vim.cmd 'enew'
  end
end, { desc = 'Close' })

vim.keymap.set('n', '<leader>#', function() vim.o.relativenumber = not vim.o.relativenumber end, { desc = 'Toggle Relative Lines' })

-- Recording
vim.keymap.set('n', 'q', '<Nop>')
vim.keymap.set('n', '<C-q>', 'q', { desc = 'Record macro' })

-- Splits
vim.keymap.set('n', '<leader>dd', '<cmd>belowright split<CR>', { desc = 'Split Down' })
vim.keymap.set('n', '<leader>dr', '<cmd>belowright vsplit<CR>', { desc = 'Split Right' })
vim.keymap.set('n', '<leader>du', '<cmd>above split<CR>', { desc = 'Split Up' })
vim.keymap.set('n', '<leader>dl', '<cmd>leftabove vsplit<CR>', { desc = 'Split Left' })

-- Window navigation
vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'which_key_ignore' })
vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'which_key_ignore' })
