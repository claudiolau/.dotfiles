local opt = vim.opt
--- Display Settings ---
opt.relativenumber = true
opt.number = true
opt.cursorline = true -- highlight the current cursor line
opt.termguicolors = true

--- Indentation Settings ---
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping
opt.formatoptions:remove { "o" }
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- spell check
opt.spelllang = "en_us"
opt.spell = true

-- window settings
opt.laststatus = 3
opt.swapfile = false
opt.title = true
opt.titlelen = 0
opt.titlestring = "GAIA 🌎"
