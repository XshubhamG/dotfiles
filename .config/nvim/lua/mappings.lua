require "nvchad.mappings"

-- Keymaps
local keymap = vim.keymap -- for consciseness

-- ciw
keymap.set("n", "<C-c>", "ciw")

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>") -- closing all files & neovim

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

-- clearing search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- formatting current buffer using conform.nvim
keymap.set("n", "<leader>fm", function()
  local conform = require "conform"
  conform.format { timeout_ms = 500, lsp_fallback = true }
end, { desc = "Format file" })

-- escaping into normal mode
keymap.set("i", "jj", "<ESC>")

-- Keyboard users
vim.keymap.set("n", "<C-t>", function()
  require("menu").open "default"
end, {})

-- mouse users + nvimtree users!
vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- neovide
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_cursor_vfx_mode = "railgun"

  keymap.set("n", "<C-s>", ":w<CR>") -- Save
  keymap.set("v", "<C-c>", '"+y') -- Copy
  keymap.set("n", "<C-v>", '"+P') -- Paste normal mode
  keymap.set("v", "<C-v>", '"+P') -- Paste visual mode
  keymap.set("c", "<C-v>", "<C-R>+") -- Paste command mode
  keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
end
