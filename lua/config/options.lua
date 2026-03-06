vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true

-- ERROR LENS
vim.diagnostic.config {
  severity_sort = true,
  float = { border = 'rounded', source = 'if_many' },
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
