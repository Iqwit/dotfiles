return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua", 
        "yuck",
        "css",
        "javascript"},
      highlight = {enable = true},
      indent = {enable = true}
    })
  end
}
