return {
  'lewis6991/gitsigns.nvim',

  event = { 'BufReadPre', 'BufNewFile' },

  opts = {

    on_attach = function(bufnr)
      local gs = require('gitsigns')

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- repeat helper
      local function repeat_until_enter(fn)
        return function()
          while true do
            fn()

            -- wait for a key
            local key = vim.fn.getcharstr()

            -- stop on Enter
            if key == '\r' or key == '\n' then
              break
            end
          end
        end
      end

      -- Navigation (repeatable)
      map('n', ']h', repeat_until_enter(gs.next_hunk), 'Next hunk (repeat)')
      map('n', '[h', repeat_until_enter(gs.prev_hunk), 'Prev hunk (repeat)')

      -- Actions
      map('n', '<leader>hs', gs.stage_hunk, 'Stage hunk')
      map('n', '<leader>hr', gs.reset_hunk, 'Reset hunk')

      map('v', '<leader>hs', function()
        gs.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
      end, 'Stage hunk')

      map('v', '<leader>hr', function()
        gs.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
      end, 'Reset hunk')

      map('n', '<leader>hS', gs.stage_buffer, 'Stage buffer')
      map('n', '<leader>hR', gs.reset_buffer, 'Reset buffer')
      map('n', '<leader>hu', gs.undo_stage_hunk, 'Undo stage hunk')

      map('n', '<leader>hp', gs.preview_hunk, 'Preview hunk')

      map('n', '<leader>hb', function()
        gs.blame_line({ full = true })
      end, 'Blame line')

      map('n', '<leader>hB', gs.toggle_current_line_blame, 'Toggle line blame')

      map('n', '<leader>hd', gs.diffthis, 'Diff this')
      map('n', '<leader>hD', function()
        gs.diffthis('~')
      end, 'Diff this ~')

      -- Text object
      map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', 'Gitsigns select hunk')
    end,
  },
}
