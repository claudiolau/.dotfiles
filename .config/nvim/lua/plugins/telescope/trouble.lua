return {
  'folke/trouble.nvim',
  dependencies = {
    { "echasnovski/mini.icons", opts = {} },
    'folke/todo-comments.nvim',
  },
  opts = {
    focus = true,
  },
  cmd = { 'Trouble', 'TroubleToggle' }, -- Include both commands for better compatibility
  keys = {
    { '<leader>xw', '<cmd>TroubleToggle workspace_diagnostics<CR>', desc = 'Open trouble workspace diagnostics' },
    { '<leader>xd', '<cmd>TroubleToggle document_diagnostics<CR>', desc = 'Open trouble document diagnostics' },
    { '<leader>xq', '<cmd>TroubleToggle quickfix<CR>', desc = 'Open trouble quickfix list' },
    { '<leader>xl', '<cmd>TroubleToggle loclist<CR>', desc = 'Open trouble location list' },
    { '<leader>xt', '<cmd>TodoTrouble<CR>', desc = 'Open todos in trouble' },
  },
}
