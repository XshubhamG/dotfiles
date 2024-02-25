-- Keymaps
local keymap = vim.keymap -- for consciseness

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>")

-- Null-LS keymap
keymap.set("n", "<leader>s", ":lua vim.lsp.buf.format()<cr>")

-- dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<C-v>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-v>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>*", { noremap = true, silent = true })

-- Options
local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true
opt.colorcolumn = "120"
