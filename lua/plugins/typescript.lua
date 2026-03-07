return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    ft = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    config = function()
      require('typescript-tools').setup({
        settings = {
          separate_diagnostic_server = true,
          publish_diagnostic_on = 'insert_leave',
          tsserver_file_preferences = {
            includeInlayParameterNameHints = 'all',
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
      })

    end,
    keys = {
      { '<leader>to', '<cmd>TSToolsOrganizeImports<cr>', desc = '[T]S [O]rganize Imports' },
      { '<leader>ta', '<cmd>TSToolsAddMissingImports<cr>', desc = '[T]S [A]dd Missing Imports' },
      { '<leader>tu', '<cmd>TSToolsRemoveUnusedImports<cr>', desc = '[T]S Remove [U]nused Imports' },
      { '<leader>tf', '<cmd>TSToolsFixAll<cr>', desc = '[T]S [F]ix All' },
      { '<leader>tr', '<cmd>TSToolsRenameFile<cr>', desc = '[T]S [R]ename File' },
    },
  },
}
