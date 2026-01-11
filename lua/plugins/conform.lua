return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "black", "isort", },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			go = { "goimports" },
			sh = { "shfmt" },
			c = { "clang-format" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
		formatters={

			black={
				prepend_args = function()
					local root = vim.fn.findfile("pyproject.toml", ".;")
					if root ~= "" then
						return { "--config", root }
					end
					return {}
				end,

			}
		},
	},

}
