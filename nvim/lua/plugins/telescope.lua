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
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Fuzzy find buffer" })
    keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Use help" })
    keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>bc", "<cmd>bd<cr>", { desc = "Close buffer" })
  end,
}
