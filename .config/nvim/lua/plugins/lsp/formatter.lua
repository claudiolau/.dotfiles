return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')
    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettier_d' },
        typescript = { 'prettier_d', 'eslint_d' },
        javascriptreact = { 'prettier_d' },
        typescriptreact = { 'prettier_d' },
        svelte = { 'prettier_d' },
        css = { 'prettier_d' },
        html = { 'prettier_d' },
        json = { 'prettier_d', 'jq' },
        yaml = { 'prettier_d' },
        markdown = { 'prettier_d' },
        graphql = { 'prettier_d' },
        liquid = { 'prettier_d' },
        lua = { 'stylua' },
        python = { 'ruff' },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })
  end,
}
