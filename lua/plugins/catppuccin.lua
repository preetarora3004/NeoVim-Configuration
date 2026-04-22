return {
	"folke/tokyonight.nvim",
   name = "tokyonight",
   config = function()
		vim.opt.termguicolors = true
		vim.cmd("colorscheme tokyonight-moon")
	end,
}
