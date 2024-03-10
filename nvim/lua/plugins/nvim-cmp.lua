return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local keymap = vim.keymap
    local builtin = require "telescope.builtin"

    -- Define a custom function to delete a file
    local function delete_file(prompt_bufnr)
      local selection = require("telescope.actions.state").get_selected_entry()
      -- Check if selection is not nil and it has a path
      if selection and selection.filename then
        -- Delete the file using vim's command
        vim.fn.delete(selection.filename, "rf")
        -- Close the Telescope prompt
        require("telescope.actions").close(prompt_bufnr)
      end
    end

    -- Set keymaps
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy find buffer" })
    keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Use help" })
    keymap.set("n", "<leader>fr", function()
      local opts = {}
      -- Attach custom mappings for the picker
      opts.attach_mappings = function(_, map)
        -- Add a keymap to delete the file on pressing <C-d>
        map("i", "<C-d>", delete_file)
        map("n", "<C-d>", delete_file)
        return true
      end
      -- Launch the oldfiles picker with custom options
      builtin.oldfiles(opts)
    end, { desc = "Fuzzy find recent files" })

    keymap.set("n", "<leader>bc", "<cmd>bd<cr>", { desc = "Close buffer" })
  end,
}
