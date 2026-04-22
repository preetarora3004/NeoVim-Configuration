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
					file_ignore_patterns = {
						"node_modules",
						".git/",
					},
					layout_config = {
						horizontal = { preview_width = 0.6 },
					},
					preview = {
						treesitter = false,
					},
					pickers = {
						find_files = {
							hidden = true,
							no_ignore = true,
						},
					},
				},
			})
		end,
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
