return {
  {
    'stevearc/conform.nvim',
    opts = {
      format_on_save = {
        timeout_ms = 500,
        lsp_format = 'fallback',
      },
      formatters_by_ft = {
        go = { 'golines', 'goimports', 'gofumpt' },
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        lua = { 'stylua' },
        markdown = { 'prettierd', 'prettier', stop_after_first = true },
        python = { 'ruff' },
        rust = { 'rustfmt' },
        typescript = { 'prettierd', 'prettier', stop_after_first = true },
        vue = { 'prettierd', 'prettier', stop_after_first = true },
      },
    },
  },
}
