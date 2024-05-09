return {
	"willothy/nvim-cokeline",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for v0.4.0+
		"nvim-tree/nvim-web-devicons", -- If you want devicons
		"stevearc/resession.nvim", -- Optional, for persistent history
	},
	config = function()
		local get_hex = require("cokeline.hlgroups").get_hl_attr
		local yellow = "#FFEB3B"

		require("cokeline").setup({
			show_if_buffers_are_at_least = 1,
			default_hl = {
				fg = function(buffer)
					local hlgroups = require("cokeline.hlgroups")
					return buffer.is_focused and hlgroups.get_hl_attr("ColorColumn", "bg")
						or hlgroups.get_hl_attr("Normal", "fg")
				end,
				bg = function(buffer)
					local hlgroups = require("cokeline.hlgroups")
					return buffer.is_focused and hlgroups.get_hl_attr("Normal", "fg")
						or hlgroups.get_hl_attr("ColorColumn", "bg")
				end,
				bold = true,
				underline = true,
			},
			sidebar = {
				filetype = { "NvimTree", "neo-tree" },
				components = {
					{
						text = "         NvimTree        ",
						fg = yellow,
						bg = function()
							return get_hex("NvimTreeNormal", "bg")
						end,
						bold = true,
						underline = true,
					},
				},
			},
		})
	end,
}
