return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},

  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function(_, opts)
    require("oil").setup(opts)
    vim.keymap.set("n", "<leader>e", "<cmd>Oil --float<CR>", { desc = "Open file explorer" })
  end,
}
