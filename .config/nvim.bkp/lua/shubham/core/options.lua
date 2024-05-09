local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- guifonts
opt.guifont = { "JetBrainMono Nerd Font", ":h13" }

-- vertical column

-- tabs & indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wraping
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "no"

-- clipboard
opt.clipboard:prepend("unnamedplus")

--split window
opt.splitright = true
opt.splitbelow = true

-- -- transparent background
-- vim.api.nvim_set_hl(0, 'Normal',{bg = 'none'})

-- terminal
opt.shell = "zsh"
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""

-- fixing checkhealth error
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0
vim.opt.showtabline = 2
