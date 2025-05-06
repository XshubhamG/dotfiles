-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps
local keymap = vim.keymap -- for consciseness

keymap.set("v", "<C-j>", ":m '<-2<CR>gv=gv", { desc = "Move selected line(s) up" })
keymap.set("v", "<C-k>", ":m '>+1<CR>gv=gv", { desc = "Move selected line(s) down" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

keymap.set(
  "n",
  "<leader>r",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word cursor is on globally" }
)

-- ciw
keymap.set("n", "<C-c>", "ciw")

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>") -- closing all files & neovim

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- escaping into normal mode
keymap.set("i", "jj", "<ESC>")

-- Buffer Previous
keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

-- Buffer Next
keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- NvimTreeToggle
keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<cr>", { desc = "NvimTree" })

-- NvimTreeFocus
keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<cr>", { desc = "NvimTree" })

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
