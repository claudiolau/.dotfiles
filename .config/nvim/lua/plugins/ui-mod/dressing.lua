return {
  'stevearc/dressing.nvim',
  event = 'VeryLazy',
  mappings = {
    n = {
      ['<Esc>'] = 'Close',
      ['<CR>'] = 'Confirm',
    },
    i = {
      ['<C-c>'] = 'Close',
      ['<CR>'] = 'Confirm',
      ['<Up>'] = 'HistoryPrev',
      ['<Down>'] = 'HistoryNext',
    },
  },
}
