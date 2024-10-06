return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_insall = true,
      highlight = {enable = true},
      indent = {enable = true}
    })
  end
}
