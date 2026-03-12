return {
  'okuuva/auto-save.nvim',
  version = '^1.0.0',
  cmd = 'ASToggle',
  event = { 'InsertLeave', 'TextChanged' },
  opts = {
    noautocmd = true,
    condition = function(buf)
      return vim.bo[buf].buftype == ''
    end,
  },
  config = function(_, opts)
    require('auto-save').setup(opts)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'AutoSaveWritePost',
      group = vim.api.nvim_create_augroup('autosave-notify', {}),
      callback = function(ev)
        if ev.data.saved_buffer ~= nil then vim.notify('Auto-saved at ' .. vim.fn.strftime '%I:%M:%S', vim.log.levels.INFO) end
      end,
    })
  end,
}
