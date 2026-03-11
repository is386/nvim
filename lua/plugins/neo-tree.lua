return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    keys = {
      { '<leader>e', '<cmd>Neotree toggle float<cr>', desc = 'Explorer' },
    },
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            added     = 'A',
            deleted   = 'D',
            modified  = 'M',
            renamed   = 'R',
            untracked = 'U',
            ignored   = 'I',
            unstaged  = '○',
            staged    = '●',
            conflict  = 'C',
          },
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
      window = {
        width = 35,
        mappings = {
          ['<space>'] = 'none',
        },
      },
    },
  },
}
