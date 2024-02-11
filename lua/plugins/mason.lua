return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local mason = require "mason"
    local mason_lspconfig = require "mason-lspconfig"
    mason.setup {
      ui = {
        icons = {
          package_installed = "✔️",
          package_pending = "⏳",
          package_unistalled = "❌",
        },
      },
    }
    mason_lspconfig.setup {

      ensure_installed = {
        "tsserver",
        "cssls",
        "tailwindcss",
      },
    }
    automatic_installed = true
  end,
}
