return {
  {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    opts = {
      keymap = {
        preset = 'default',
        ['<Tab>'] = { 'accept', 'fallback' },
      },
      completion = {
        documentation = {
          auto_show = false,
          auto_show_delay_ms = 500,
        },
        menu = {
          border = 'none',
        },
      },
      sources = {
        default = { 'lsp', 'path' },
      },
      fuzzy = { implementation = 'lua' },
      signature = { enabled = true },
    },
  },
}
