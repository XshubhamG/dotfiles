require "nvchad.options"

local opt = vim.opt -- for conscisenes

opt.relativenumber = true
opt.shiftwidth = 2
opt.number = true
opt.colorcolumn = "100"
opt.cursorlineopt = "both"
opt.guifont = "JetBrainsMono Nerd Font:h12"
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
opt.termguicolors = true

-- remove whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e",
})

-- Set italic for markdown italic
vim.api.nvim_set_hl(0, "markdownItalic", { italic = true })

-- Set bold for markdown bold
vim.api.nvim_set_hl(0, "markdownBold", { bold = true })

opt.ruler = true
opt.rulerformat = " %l  %c"
