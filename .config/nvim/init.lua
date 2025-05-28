-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- set custom highlights for @markup.strong and @markup.italic
vim.api.nvim_set_hl(0, "@markup.strong", { bold = true, fg = "#a6e3a1" })
vim.api.nvim_set_hl(0, "@markup.italic", { italic = true, fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "@markup.strikethrough", { strikethrough = true, fg = "#b4befe" })
