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
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("harpoon").setup({
				menu = {
					width = vim.api.nvim_win_get_width(0) - 4,
				},
			})
		end,
		keys = {
			{
				"<leader>j",
				"<cmd>lua require('harpoon.mark').add_file() print('Added file to harpoon')<cr>",
				desc = "Mark file with harpoon",
			},
			{
				"<C-n>",
				"<cmd>lua require('harpoon.ui').nav_next()<cr>",
				desc = "Go to next harpoon mark",
			},
			{
				"<C-p>",
				"<cmd>lua require('harpoon.ui').nav_prev()<cr>",
				desc = "Go to previous harpoon mark",
			},
			{
				"<C-e>",
				"<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
				desc = "Show harpoon marks",
			},
		},
	},
}
