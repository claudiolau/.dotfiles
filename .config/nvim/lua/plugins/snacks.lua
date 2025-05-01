return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = { sections = { section = 'keys', gap = 1, padding = 1 } },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    styles = {
      notification = {
        border = 'rounded',
        zindex = 100,
        ft = 'markdown',
        wo = {
          winblend = 5,
          wrap = false,
          conceallevel = 2,
          colorcolumn = '',
        },
        bo = { filetype = 'snacks_notif' },
      },
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    zen = { enabled = true },
  },
  keys = {
    -- INFO: Debug notification
    {
      '<leader>n',
      function()
        Snacks.notifier.show_history()
      end,
      desc = 'Notification History',
    },

    -- INFO: mode
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = 'Toggle Zen Mode',
    },
    {
      '<leader>Z',
      function()
        Snacks.zen.zoom()
      end,
      desc = 'Toggle Zoom',
    },
  },
}
