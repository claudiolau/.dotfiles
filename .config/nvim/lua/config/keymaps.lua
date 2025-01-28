--- ShortCut Settings ---

vim.g.mapleader = ' '

-- Escape
vim.api.nvim_set_keymap('n', '<leader><esc>', ':qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader><esc>', ':<C-u>qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader><esc>', '<C-\\><C-n>:qa!<CR>', { noremap = true })

-- Normal mode: Easier window navigation
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { noremap = true, silent = true }) -- Next window
vim.api.nvim_set_keymap('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true }) -- Previous window
