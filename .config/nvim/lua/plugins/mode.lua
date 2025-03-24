return {
  'folke/zen-mode.nvim',
  opts = {
    -- Your zen-mode configuration can go here
    -- For example:
    -- window = {
    --   width = 0.85,
    -- },
  },
  keys = {
    { '<leader>zm', '<cmd>ZenMode<cr>', desc = 'Zen mode a split' },
  },
}
