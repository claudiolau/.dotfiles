if vim.loader then
  vim.loader.enable()
end

require('core.lazy')
require('config.keymaps')
require('config.options')
require('config.terminal')
