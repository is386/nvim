local M = {}

local function system_info()
  local uname = vim.uv.os_uname()
  vim.health.info('System: ' .. uname.sysname .. ' ' .. uname.release .. ' (' .. uname.machine .. ')')
end

local function check_version()
  local verstr = tostring(vim.version())
  if vim.version.ge and vim.version.ge(vim.version(), '0.11') then
    vim.health.ok('Neovim version: ' .. verstr)
  else
    vim.health.error('Neovim out of date: ' .. verstr .. '. Upgrade to >= 0.11')
  end
end

local function check_tool(exe, alternatives, purpose, severity)
  local found = vim.fn.executable(exe) == 1
  local found_name = exe

  if not found and alternatives then
    for _, alt in ipairs(alternatives) do
      if vim.fn.executable(alt) == 1 then
        found = true
        found_name = alt
        break
      end
    end
  end

  if found then
    vim.health.ok(found_name .. ': ' .. purpose)
  else
    local names = exe
    if alternatives then
      names = names .. '/' .. table.concat(alternatives, '/')
    end
    vim.health[severity](names .. ' not found: ' .. purpose)
  end
end

local function check_tools()
  local is_linux = vim.uv.os_uname().sysname == 'Linux'

  check_tool('git', nil, 'core build tool', 'error')
  check_tool('make', nil, 'core build tool', 'error')
  check_tool('gcc', { 'cc' }, 'C compiler for build tools', 'error')
  check_tool('unzip', nil, 'core build tool', 'error')
  check_tool('rg', nil, 'Telescope live grep', 'error')
  check_tool('fd', { 'fdfind' }, 'Telescope file finder', 'error')
  check_tool('tree-sitter', nil, 'Treesitter parser compilation', 'error')
  check_tool('luarocks', nil, 'luarocks package manager', 'error')
  check_tool('cargo', nil, 'blink.cmp build', 'error')
  check_tool('node', nil, 'tree-sitter-cli install', 'error')
  check_tool('npm', nil, 'tree-sitter-cli install', 'error')
  check_tool('bat', { 'batcat' }, 'better previews', 'error')

  if is_linux then
    check_tool('xclip', nil, 'clipboard support (Linux)', 'error')
  end
end

local function check_plugins()
  local plugins = {
    { 'lazy', 'lazy.nvim plugin manager' },
    { 'telescope', 'fuzzy finder' },
    { 'nvim-treesitter', 'syntax highlighting' },
    { 'blink.cmp', 'autocompletion' },
    { 'mason', 'LSP/tool installer' },
    { 'lspconfig', 'LSP configuration' },
  }

  for _, plugin in ipairs(plugins) do
    local mod, desc = plugin[1], plugin[2]
    local ok, _ = pcall(require, mod)
    if ok then
      vim.health.ok(mod .. ': ' .. desc)
    else
      vim.health.error(mod .. ' not loaded: ' .. desc)
    end
  end
end

M.check = function()
  vim.health.start('config')
  system_info()
  check_version()
  check_tools()
  check_plugins()
end

return M
