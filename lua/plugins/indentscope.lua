return {
  "echasnovski/mini.indentscope",
  version = false,
  config = function()
    require("mini.indentscope").setup({
      symbol = "│",

      options = {
        try_as_border = false, -- IMPORTANT: prevents weird centering feel
      },

      draw = {
        delay = 0, -- removes animation (makes it feel normal)
      },
    })
  end,
}
