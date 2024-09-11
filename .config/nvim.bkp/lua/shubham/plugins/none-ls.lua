return {
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		local formatting = null_ls.builtins.formatting
		null_ls.setup({
			debug = false,
			sources = {
				formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
				formatting.black.with({ extra_args = { "--fast" } }),
				formatting.stylua,
				-- diagnostics.flake8
			},
		})
	end,
}
