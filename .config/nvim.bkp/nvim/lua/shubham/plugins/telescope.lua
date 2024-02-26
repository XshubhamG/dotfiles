return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		require("telescope").load_extension("noice")
		telescope.setup()
	end,
}
