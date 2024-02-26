return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/playground" },
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query", "markdown" },
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
