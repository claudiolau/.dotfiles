return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'echasnovski/mini.icons', opts = {} },
    'folke/todo-comments.nvim',
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local transform_mod = require('telescope.actions.mt').transform_mod

    local trouble = require('trouble')
    local trouble_telescope = require('trouble.sources.telescope')

    -- or create your custom action
    local custom_actions = transform_mod({
      open_trouble_qflist = function(prompt_bufnr)
        trouble.toggle('quickfix')
      end,
    })

    telescope.setup({
      defaults = {
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous, -- move to prev result
            ['<C-j>'] = actions.move_selection_next, -- move to next result
            ['<C-q>'] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
            ['<C-t>'] = trouble_telescope.open,
            ['<C-d>'] = actions.delete_buffer,
          },
          n = {
            ['<C-d>'] = actions.delete_buffer,
            ['dd'] = actions.delete_buffer,
          },
        },
      },
    })

    telescope.load_extension('fzf')

    -- set keymaps
    local keymap = vim.keymap

    -- file directory
    keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
    keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>', { desc = 'Fuzzy find recent files' })
    keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd' })
    keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd' })
    keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = 'Find buffers' })
    -- todo
    keymap.set('n', '<leader>ft', '<cmd>TodoTelescope<cr>', { desc = 'Find todos' })
    -- git
    keymap.set('n', '<leader>fgc', '<cmd>Telescope git_commits<cr>', { desc = 'Find git commit' })
    keymap.set('n', '<leader>fgb', '<cmd>Telescope git_branches<cr>', { desc = 'Find git branches' })
    keymap.set('n', '<leader>fgs', '<cmd>Telescope git_stash<cr>', { desc = 'Find git branches' })
  end,
}
