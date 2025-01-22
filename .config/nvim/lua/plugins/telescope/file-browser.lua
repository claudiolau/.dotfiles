return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').load_extension('file_browser')

    -- Key mapping for opening the file browser
    vim.api.nvim_set_keymap(
      'n',
      '<leader>fb',
      ':cd %:p:h<CR><cmd>Telescope file_browser<cr>',
      { noremap = true, silent = true }
    )
  end,
}
