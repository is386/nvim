return {
  { 'NMAC427/guess-indent.nvim', opts = {} },

  {
    'petertriho/nvim-scrollbar',
    opts = {
      handle = {
        blend = 0, -- make scrollbar fully opaque
      },
      marks = {
        GitAdd = { text = '▎' },
        GitChange = { text = '▎' },
        GitDelete = { text = '▎' },
      },
      handlers = {
        gitsigns = true,
      },
    },
  },
}
