return {
  { -- Autocompletion
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = 'default',
        ['<Tab>'] = { 'accept', 'fallback' },
      },
      completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
        menu = {
          draw = {
            components = {
              kind_icon = {
                text = function(ctx)
                  local kind_icons = {
                    Text = '󰉿', Method = '󰊕', Function = '󰊕', Constructor = '',
                    Field = '󰜢', Variable = '󰀫', Class = '󰠱', Interface = '',
                    Module = '', Property = '󰜢', Unit = '󰑭', Value = '󰎠',
                    Enum = '', Keyword = '󰌋', Snippet = '', Color = '󰏘',
                    File = '󰈙', Reference = '󰈇', Folder = '󰉋', EnumMember = '',
                    Constant = '󰏿', Struct = '󰙅', Event = '', Operator = '󰆕',
                    TypeParameter = '',
                  }
                  return (kind_icons[ctx.kind] or '') .. ' '
                end,
              },
            },
          },
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
