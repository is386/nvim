return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {
        settings = {
          save_on_toggle = true,
        },
      }

      vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end, { desc = 'Add Harpoon' })
      vim.keymap.set('n', '<leader>m', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Harpoon Menu' })


      for i = 1, 9 do
        vim.keymap.set('n', '<leader>' .. i, function() harpoon:list():select(i) end, { desc = 'which_key_ignore' })
      end
      vim.keymap.set('n', '<leader>0', function() harpoon:list():select(10) end, { desc = 'which_key_ignore' })
    end,
  },
}
