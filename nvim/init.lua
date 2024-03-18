require "config.options"
require "config.remap"
require "config.lazy"

require("py_lsp").setup {
  -- This is optional, but allows to create virtual envs from nvim
  host_python = "/usr/bin/python3",
  default_venv_name = ".venv", -- For local venv
}
-- Set the background color for misspelled words
-- vim.cmd [[highlight SpellBad guibg=#ff2929 ctermbg=224]]
