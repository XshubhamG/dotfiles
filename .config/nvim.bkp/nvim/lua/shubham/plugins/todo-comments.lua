return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		colors = {
			error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
			warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
			info = { "DiagnosticInfo", "#49fc03" },
			hint = { "DiagnosticHint", "#10B981" },
			default = { "Identifier", "#7C3AED" },
			test = { "Identifier", "#FF00FF" },
		},
	},
	config = function()
		local todoComment = require("todo-comments")
		todoComment.setup()
	end,
}

--TODO:

--HACK:

--BUG:

--WARN:

--NOTE:

--TEST:

--FIX:

--PERF:
