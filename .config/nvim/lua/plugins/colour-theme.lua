return {
  'craftzdog/solarized-osaka.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('solarized-osaka').setup({
      styles = {
        floats = 'transparent',
      },
    })

    -- Set your colorscheme
    vim.cmd [[colorscheme solarized-osaka]]

    -- Function to set transparency for nvim-tree
    local function set_nvim_tree_transparency()
      vim.cmd([[highlight NvimTreeNormal guibg=NONE]])
      vim.cmd([[highlight NvimTreeEndOfBuffer guibg=NONE guifg=NONE]])
      vim.cmd([[highlight NvimTreeWinSeparator guibg=NONE guifg=NONE]])
      vim.cmd([[highlight NvimTreeCursorLine guibg=NONE]])
    end

    -- Apply transparency settings for nvim-tree initially
    set_nvim_tree_transparency()
  end,
}
