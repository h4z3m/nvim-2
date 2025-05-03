return {
	"catppuccin/nvim",
	name = "catppuccin",
	config = function()
		require("catppuccin").setup({
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = false,
				treesitter = true,
				notify = false,
				mini = {
					enabled = true,
					indentscope_color = "",
				},
			},
		})
		vim.cmd("colorscheme catppuccin-mocha")
	end,
}
