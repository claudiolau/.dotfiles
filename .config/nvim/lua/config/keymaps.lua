--- ShortCut Settings ---

vim.g.mapleader = ' '

-- Escape
vim.api.nvim_set_keymap('n', '<leader><esc>', ':qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader><esc>', ':<C-u>qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader><esc>', '<C-\\><C-n>:qa!<CR>', { noremap = true })

-- Normal mode key mappings for window navigation
vim.api.nvim_set_keymap('n', '<Tab>j', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>k', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>l', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Tab>h', '<C-w>h', { noremap = true, silent = true })

-- Terminal mode key mappings for window navigation
vim.api.nvim_set_keymap('t', '<Tab>j', '<C-\\><C-n><C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Tab>k', '<C-\\><C-n><C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Tab>l', '<C-\\><C-n><C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<Tab>h', '<C-\\><C-n><C-w>h', { noremap = true, silent = true })

-- Tab navigation between buffers
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
