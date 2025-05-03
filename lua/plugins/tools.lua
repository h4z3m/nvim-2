return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
	},
	{
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
		lazy = false,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
		event = { "BufReadPre", "BufNewFile" },
	},
	{
		"tpope/vim-fugitive",
		event = "BufWinEnter",
		keys = {
			{ "<leader>gs", "<cmd>G<cr>", desc = "Git Status" },
		},
	},
}
