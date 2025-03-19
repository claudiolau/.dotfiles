return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        typescript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescriptreact = { 'prettier' },
        svelte = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
        graphql = { 'prettier' },
        liquid = { 'prettier' },
        lua = { 'stylua' },
        python = { 'isort', 'black' },
      },
      format_after_save = {
        lsp_fallback = true,
        async = true,
        timeout_ms = 1000,
      },
    })

    -- Function to organize imports
    local function organize_imports()
      local params = {
        command = '_typescript.organizeImports',
        arguments = { vim.api.nvim_buf_get_name(0) },
        title = '',
      }
      vim.lsp.buf.execute_command(params)
    end

    -- LSP setup for TypeScript
    require('lspconfig').ts_ls.setup {
      on_attach = function(client, bufnr)
        -- Automatically organize imports on save
        vim.api.nvim_create_autocmd('BufWritePre', {
          buffer = bufnr,
          callback = function()
            organize_imports()
          end,
        })

        -- Key mapping for organizing imports
        vim.api.nvim_buf_set_keymap(
          bufnr,
          'n',
          '<leader>oi',
          '<cmd>lua organize_imports()<CR>',
          { noremap = true, silent = true, desc = 'Organize Imports' }
        )
      end,
      capabilities = {}, -- Add your capabilities if needed
      commands = {
        OrganizeImports = {
          organize_imports,
          description = 'Organize Imports',
        },
      },
    }
  end,
}
