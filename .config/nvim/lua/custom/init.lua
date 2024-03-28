-- Keymaps
local keymap = vim.keymap -- for consciseness

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>")

-- dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

keymap.set("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })

-- neovide
if vim.g.neovide then
  keymap.set("n", "<C-s>", ":w<CR>") -- Save
  keymap.set("v", "<C-c>", '"+y') -- Copy
  keymap.set("n", "<C-v>", '"+P') -- Paste normal mode
  keymap.set("v", "<C-v>", '"+P') -- Paste visual mode
  keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
  keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<C-V>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<C-V>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-V>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>*", { noremap = true, silent = true })

vim.g.codeium_no_map_tab = 1

-- Options
local opt = vim.opt -- for conscisenes

-- line numbers
opt.relativenumber = true
opt.shiftwidth = 2
opt.number = true
opt.colorcolumn = "100"
opt.guifont = "JetBrainsMono Nerd Font"
