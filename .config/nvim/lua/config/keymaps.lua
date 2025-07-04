--- ShortCut Settings ---
vim.g.mapleader = ' '

-- quit
vim.api.nvim_set_keymap('n', '<leader><esc>', ':qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader><esc>', ':<C-u>qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader><esc>', '<C-\\><C-n>:qa!<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>q', ':<C-u>:q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('t', '<leader>q', '<C-\\><C-n>:q!<CR>', { noremap = true })

-- Easier window navigation
vim.api.nvim_set_keymap('n', '<S-Tab>', '<C-w>W', { noremap = true, silent = true }) -- Previous window
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { noremap = true, silent = true }) -- Next window

-- Shift Code Block
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected lines down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selected lines up' })
vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true, desc = 'Indent selected lines' })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true, desc = 'Unindent selected lines' })
