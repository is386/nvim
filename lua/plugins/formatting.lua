return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    ---@module 'conform'
    ---@type conform.setupOpts
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        go = { 'golines', 'goimports', 'gofumpt' },
        rust = { 'rustfmt' },
        typescript = { 'prettierd', 'prettier', stop_after_first = true },
        typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        javascript = { 'prettierd', 'prettier', stop_after_first = true },
        javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
        markdown = { 'prettierd', 'prettier', stop_after_first = true },
      },
      formatters = {
        prettierd = {
          condition = function(_, ctx)
            if vim.fn.executable('prettierd') ~= 1 then
              return false
            end
            local prettier_configs = {
              '.prettierrc',
              '.prettierrc.js',
              '.prettierrc.cjs',
              '.prettierrc.mjs',
              '.prettierrc.json',
              '.prettierrc.json5',
              '.prettierrc.yaml',
              '.prettierrc.yml',
              'prettier.config.js',
              'prettier.config.cjs',
              'prettier.config.mjs',
            }
            return vim.fs.find(prettier_configs, { path = ctx.filename, upward = true })[1] ~= nil
          end,
        },
        prettier = {
          condition = function(_, ctx)
            local prettier_configs = {
              '.prettierrc',
              '.prettierrc.js',
              '.prettierrc.cjs',
              '.prettierrc.mjs',
              '.prettierrc.json',
              '.prettierrc.json5',
              '.prettierrc.yaml',
              '.prettierrc.yml',
              'prettier.config.js',
              'prettier.config.cjs',
              'prettier.config.mjs',
            }
            return vim.fs.find(prettier_configs, { path = ctx.filename, upward = true })[1] ~= nil
          end,
        },
      },
    },
  },
}
