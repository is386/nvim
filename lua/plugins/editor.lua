return {
  { 'NMAC427/guess-indent.nvim', opts = {} },

  {
    'petertriho/nvim-scrollbar',
    opts = {
      handle = {
        blend = 0, -- make scrollbar fully opaque
      },
      marks = {
        GitAdd = {},
        GitChange = {},
        GitDelete = {},
      },
      handlers = {
        gitsigns = true,
      },
    },
  },
}
