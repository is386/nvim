return {
  { -- Fuzzy Finder (files, lsp, etc)
    'nvim-telescope/telescope.nvim',
    enabled = true,
    event = 'VimEnter',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function() return vim.fn.executable 'make' == 1 end,
      },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons' },
    },
    config = function()
      require('telescope').setup {
        defaults = {
          file_ignore_patterns = {
            '%.git/',
            'node_modules/',
            '%.DS_Store',
            '__pycache__/',
            '%.o',
            '%.zip',
            '%.tar%.gz',
            '%.jpg',
            '%.png',
            '%.gif',
            '%.pdf',
          },
        },
        pickers = {
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          ['ui-select'] = { require('telescope.themes').get_dropdown() },
        },
      }

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local builtin = require 'telescope.builtin'
      vim.keymap.set('n', '<leader>sa', function() builtin.live_grep({ prompt_title = 'Search All' }) end, { desc = 'Search All' })
      vim.keymap.set('n', '<leader>sf', function() builtin.find_files({ prompt_title = 'Search Files' }) end, { desc = 'Search Files' })
      vim.keymap.set('n', '<leader>sr', function() builtin.oldfiles({ prompt_title = 'Search Recent Files' }) end, { desc = 'Search Recent Files' })
      vim.keymap.set({ 'n', 'v' }, '<leader>sw', function() builtin.grep_string({ prompt_title = 'Search Current Word' }) end, { desc = 'Search Current Word' })
      vim.keymap.set('n', '<leader>gs', function() builtin.git_status({ prompt_title = 'Search Git Status' }) end, { desc = 'Search Git Status' })

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('telescope-lsp-attach', { clear = true }),
        callback = function(event)
          local buf = event.buf
          vim.keymap.set('n', '<leader>lr', function() builtin.lsp_references({ prompt_title = 'References' }) end, { buffer = buf, desc = 'References' })
          vim.keymap.set('n', '<leader>ld', function() builtin.lsp_definitions({ prompt_title = 'Definition' }) end, { buffer = buf, desc = 'Definition' })
        end,
      })


      vim.keymap.set(
        'n',
        '<leader>f',
        function()
          builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
            winblend = 0,
            previewer = false,
            prompt_title = 'Find',
          })
        end,
        { desc = 'Find' }
      )
      vim.keymap.set('n', '<leader>sn', function() builtin.find_files { cwd = vim.fn.stdpath 'config', prompt_title = 'Search Neovim Files' } end, { desc = 'Search Neovim Files' })
    end,
  },
}
