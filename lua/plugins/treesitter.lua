
  return {
    "nvim-treesitter/nvim-treesitter",
    version = "v0.9.2",
    build = ":TSUpdate",
    lazy = false,

    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "tsx",
          "json",
          "bash",
          "html",
          "css",
          "prisma"
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }

