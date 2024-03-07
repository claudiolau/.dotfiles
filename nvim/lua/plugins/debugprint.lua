-- Define a function to log custom TurboLog messages
local function custom_turbolog(message)
  -- You can replace this with your desired TurboLog implementation
  print("Custom TurboLog message: " .. message)
end
return {
  "andrewferrier/debugprint.nvim",
  opts = {},
  -- Dependency only needed for NeoVim 0.8
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  -- Remove the following line to use development versions,
  -- not just the formal releases
  version = "*",
  vim.keymap.set("n", "<Leader>dq", function()
    -- Example usage of custom TurboLog function
    custom_turbolog "🚀"
    -- Note: setting `expr=true` and returning the value are essential
    return require("debugprint").debugprint { variable = true }
  end, {
    expr = true,
  }),
  vim.api.nvim_create_user_command("DeleteDebugs", function(opts)
    -- Note: you must set `range=true` and pass through opts for ranges to work
    require("debugprint").deleteprints(opts)
  end, {
    range = true,
  }),
}
