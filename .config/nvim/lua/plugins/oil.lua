return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    view_options = {
      show_hidden = true,
      git = {
        add = false, -- Disable git integration entirely
      },
    },
  },
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  lazy = false,
  keys = {
    { '-', '<cmd>Oil<CR>', desc = 'Open parent directory' },
  },
}
