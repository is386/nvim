local git_root_cache = {}

vim.api.nvim_create_autocmd({ 'BufEnter', 'DirChanged' }, {
  callback = function()
    git_root_cache[vim.api.nvim_get_current_buf()] = nil
  end,
})

local function project_name()
  local buf = vim.api.nvim_get_current_buf()

  if not git_root_cache[buf] then
    local root = vim.fn.system('git rev-parse --show-toplevel 2>/dev/null'):gsub('\n', '')
    local dir = (vim.v.shell_error == 0 and root ~= '') and root or vim.fn.getcwd()
    git_root_cache[buf] = vim.fn.fnamemodify(dir, ':t')
  end

  return git_root_cache[buf]
end

local function clock()
  return os.date '%I:%M'
end

return {
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'nord',
        section_separators = '',
        component_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { project_name, 'branch' },
        lualine_c = { { 'filename', symbols = { modified = ' ●' } } },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { clock },
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
