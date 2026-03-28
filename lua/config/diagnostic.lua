vim.diagnostic.config {
  severity_sort = true,
  float = { source = 'if_many', max_width = 60 },
  underline = false,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '',
      [vim.diagnostic.severity.WARN] = '',
      [vim.diagnostic.severity.INFO] = '',
      [vim.diagnostic.severity.HINT] = '',
    },
    linehl = {
      [vim.diagnostic.severity.ERROR] = 'DiagnosticLineError',
      [vim.diagnostic.severity.WARN] = 'DiagnosticLineWarn',
      [vim.diagnostic.severity.INFO] = 'DiagnosticLineInfo',
      [vim.diagnostic.severity.HINT] = 'DiagnosticLineHint',
    },
  },
  virtual_text = {
    source = 'if_many',
    spacing = 2,
    prefix = '',
    format = function(diagnostic)
      local win_width = vim.api.nvim_win_get_width(0)
      local col = vim.api.nvim_win_get_cursor(0)[2]
      local max_len = win_width - col - 15
      if max_len < 20 then max_len = 20 end
      local msg = diagnostic.message:gsub('\n', ' ')
      if #msg > max_len then return msg:sub(1, max_len - 3) .. '...' end
      return msg
    end,
  },
}

local function setup_diagnostic_highlights()
  local error_hl = vim.api.nvim_get_hl(0, { name = 'DiagnosticVirtualTextError' })
  local warn_hl = vim.api.nvim_get_hl(0, { name = 'DiagnosticVirtualTextWarn' })
  local info_hl = vim.api.nvim_get_hl(0, { name = 'DiagnosticVirtualTextInfo' })

  vim.api.nvim_set_hl(0, 'DiagnosticLineError', { bg = error_hl.bg })
  vim.api.nvim_set_hl(0, 'DiagnosticLineWarn', { bg = warn_hl.bg })
  vim.api.nvim_set_hl(0, 'DiagnosticLineInfo', { bg = info_hl.bg })
  vim.api.nvim_set_hl(0, 'DiagnosticLineHint', { bg = warn_hl.bg })
  vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', { fg = warn_hl.fg, bg = warn_hl.bg })
end

vim.api.nvim_create_autocmd('ColorScheme', { callback = setup_diagnostic_highlights })
setup_diagnostic_highlights()
