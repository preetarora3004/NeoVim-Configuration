return {
  { "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end 
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "eslint"}
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()      
      vim.lsp.config("lua_ls", {})
      vim.lsp.enable("lua_ls")
      vim.lsp.config("ts_ls", {})
      vim.lsp.enable("ts_ls")
      vim.lsp.config("prismals", {})
      vim.lsp.enable("prismals")
      vim.lsp.config("jsonls", {})
      vim.lsp.enable("jsonls")
      vim.lsp.config("eslint",{})
      vim.lsp.enable("eslint")

      vim.lsp.config("bashls", {})
      vim.lsp.enable("bashls")
      vim.lsp.config("tailwindcss", {})
      vim.lsp.enable("tailwindcss")

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

    end,
  },
}
