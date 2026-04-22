return {
   {
      "williamboman/mason.nvim",
      config = function()
         require("mason").setup()
      end
   },
   {
      "williamboman/mason-lspconfig.nvim",
      config = function()
         require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "eslint", "tailwindcss", "ts_ls" }
         })
      end,
   },
   {
      "neovim/nvim-lspconfig",
      config = function()

         local capabilities = require("cmp_nvim_lsp").default_capabilities()

         vim.lsp.config("lua_ls", {capabilities = capabilities})
         vim.lsp.enable("lua_ls")
         vim.lsp.config("ts_ls", {capabilities = capabilities})
         vim.lsp.enable("ts_ls")
         vim.lsp.config("prismals", {capabilities = capabilities})
         vim.lsp.enable("prismals")
         vim.lsp.config("jsonls", {capabilities = capabilities})
         vim.lsp.enable("jsonls")
         vim.lsp.config("eslint", {capabilities = capabilities})
         vim.lsp.enable("eslint")

         vim.lsp.config("bashls", {capabilities = capabilities})
         vim.lsp.enable("bashls")
         vim.lsp.config("tailwindcss", {
            capabilities = capabilities,

            filetypes = {
               "html",
               "css",
               "javascript",
               "typescript",
               "javascriptreact",
               "typescriptreact",
               "tsx",
            },

            settings = {
               tailwindCSS = {
                  experimental = {
                     classRegex = {
                        "className=\"([^\"]*)\"",
                        "className={'([^'}]*)'}",
                        "class=\"([^\"]*)\"",
                     },
                  },
               },
            },
         })
         vim.lsp.enable("tailwindcss")

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
         vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      end,
   },
}

