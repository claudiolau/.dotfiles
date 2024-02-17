return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      offsets = { { filetype = "NvimTree", text = "🚀", text_align = "center" } },
      diagnostics = "nvim_lsp",
      separator_style = { "", "" },
      modified_icon = "●",
      show_close_icon = false,
      show_buffer_close_icons = false,
    },
  },
}
