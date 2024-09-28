return {
  {"williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "html",
          "rust_analyzer",
          "cssls"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lscfg = require("lspconfig")
      lscfg.lua_ls.setup({})
      lscfg.pyright.setup({})
      lscfg.html.setup({})
      lscfg.rust_analyzer.setup({})
      lscfg.cssls.setup({})
      lscfg.ts_ls.setup({})
      vim.keymap.set('n', '<S-k>', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  }
}
