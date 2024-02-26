-- Keymaps
local keymap = vim.keymap -- for consciseness

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>")

-- Null-LS keymap
keymap.set("n", "<leader>s", ":lua vim.lsp.buf.format()<cr>")

-- dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

-- neovide
if vim.g.neovide then
  vim.keymap.set("n", "<C-s>", ":w<CR>")      -- Save
  vim.keymap.set("v", "<C-c>", '"+y')         -- Copy
  vim.keymap.set("n", "<C-V>", '"+P')         -- Paste normal mode
  vim.keymap.set("v", "<C-V>", '"+P')         -- Paste visual mode
  vim.keymap.set("c", "<C-V>", "<C-R>+")      -- Paste command mode
  vim.keymap.set("i", "<C-V>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<C-V>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<C-V>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-V>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>*", { noremap = true, silent = true })

-- Options
local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true
opt.colorcolumn = "120"
opt.guifont = "JetBrainsMono Nerd Font"
