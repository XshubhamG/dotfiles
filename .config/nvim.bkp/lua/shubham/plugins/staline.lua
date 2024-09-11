return {
	"tamton-aquib/staline.nvim",
	config = function()
		require("staline").setup({
			defaults = {
				left_separator = "",
				right_separator = "",
				expand_null_ls = false, -- This expands out all the null-ls sources to be shown
				full_path = false,
				line_column = "[%l/%L]", -- `:h stl` to see all flags.

				fg = "#000000", -- Foreground text color.
				bg = "none", -- Default background is transparent.
				inactive_color = "#404040",
				inactive_bgcolor = "none",
				true_colors = true, -- true lsp colors.
				font_active = "none", -- "bold", "italic", "bold,italic", etc

				mod_symbol = "  ",
				lsp_client_symbol = " ",
				lsp_client_character_length = 12, -- Shorten LSP client names.
				branch_symbol = " ",
				cool_symbol = "󰣇 ", -- Change this to override default OS icon.
				null_ls_symbol = "", -- A symbol to indicate that a source is coming from null-ls
			},
			mode_colors = {
				i = "#2bbb4f",
				v = "#986fec",
				c = "#FFEB3B",
				n = "#4799eb", -- etc..
			},
			sections = {
				left = { "- ", "-mode", "left_sep_double", " ", "branch" },
				mid = { "-file_name", "-lsp" },
				right = { "cool_symbol", "right_sep_double", "line_column", "-cwd" },
			},
			lsp_symbols = {
				Error = " ",
				Info = " ",
				Warn = " ",
				Hint = "",
			},
		})
	end,
}
