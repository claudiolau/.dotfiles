--- ShortCut Settings ---

vim.g.mapleader = " "

vim.api.nvim_set_keymap("v", "<leader>y", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader><esc>", ":qa!<CR>", { noremap = true })

-- Split panes
vim.api.nvim_set_keymap("n", "<leader>vs", ":vsp<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>hs", ":sp<CR>", { noremap = true })

-- Pane navigation
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })

-- Pane resizing
-- vim.api.nvim_set_keymap("n", "<C-Up>", "<C-W>+", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-Down>", "<C-W>-", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-Left>", "<C-W><", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<C-Right>", "<C-W>>", { noremap = true })

-- Tab navigation between buffers
vim.api.nvim_set_keymap("n", "<leader><Tab>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader><S-Tab>", ":bprevious<CR>", { noremap = true, silent = true })
