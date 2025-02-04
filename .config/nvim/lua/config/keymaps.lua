--- ShortCut Settings ---

vim.g.mapleader = ' '

-- save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true })

-- quit
vim.api.nvim_set_keymap('n', '<leader><esc>', ':qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader><esc>', ':<C-u>qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader><esc>', '<C-\\><C-n>:qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>q', ':<C-u>:q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>q', '<C-\\><C-n>:q!<CR>', { noremap = true })

-- Normal mode

-- Easier window navigation
vim.api.nvim_set_keymap('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true }) -- Previous window
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { noremap = true, silent = true }) -- Next window

-- Visual Mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected lines down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected lines up' })
