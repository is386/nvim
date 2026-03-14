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

      vim.keymap.set('n', '<leader>pa', function() harpoon:list():add() end, { desc = 'Add File' })
      vim.keymap.set('n', '<leader>pp', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = 'Menu' })

      for i = 1, 9 do
        vim.keymap.set('n', '<leader>p' .. i, function() harpoon:list():select(i) end, { desc = 'which_key_ignore' })
      end
    end,
  },
}
