---@module 'render-markdown'
return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' },
  lazy = true,
  ft = { 'markdown' },
  opts = {
    html = {
      enabled = true,
      render_modes = false,
      comment = {
        conceal = true, -- Conceal HTML comments
        text = nil, -- No inline text before concealed comments
        highlight = 'RenderMarkdownHtmlComment', -- Highlight group for concealed text
      },
      tag = {
        -- Use a meaningful icon for 'div' tags, e.g. an emoji or symbol
        div = { icon = '', highlight = 'RenderMarkdownHtmlComment' },
        a = { icon = '', highlight = 'RenderMarkdownHtmlComment' },
        img = { icon = '📝', highlight = 'RenderMarkdownHtmlComment' },
      },
    },
  },
}
