
  return {
    "nvim-treesitter/nvim-treesitter",
    version = "v0.9.2",
    build = ":TSUpdate",
    lazy = false,

    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "bash",
          "html",
          "css",
        },

        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }

