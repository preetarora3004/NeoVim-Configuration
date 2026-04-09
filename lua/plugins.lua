return {

  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")

      vim.keymap.set("n", "<C-p>", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

      require("telescope").setup({
        defaults = {
          layout_config = {
            horizontal = { preview_width = 0.6 },
          },
          preview = {
            treesitter = false,
          },
        },
      })
    end,
  },

  {
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
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim"
     },
  },
}

