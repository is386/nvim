return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {},
    opts = {
      options = {
        theme = 'nord',
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          function()
            local root = vim.fn.system('git rev-parse --show-toplevel 2>/dev/null'):gsub('\n', '')
            if vim.v.shell_error == 0 and root ~= '' then return vim.fn.fnamemodify(root, ':t') end
            return vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
          end,
          { 'branch' },
        },
        lualine_d = { { 'filename', symbols = { modified = ' ●' } } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { function() return os.date '%I:%M' end },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
