require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- Options
local opt = vim.opt -- for conscisenes

-- line numbers
opt.relativenumber = true
opt.shiftwidth = 2
opt.number = true
opt.colorcolumn = "100"
opt.guifont = "JetBrainsMono Nerd Font:h13"
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
