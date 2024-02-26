vim.g.mapleader = " "

local keymap = vim.keymap -- for consciseness

-- general keymaps
keymap.set("n", "<leader>qa", ":qa!<CR>")
keymap.set("n", "<C-s>", ":lua vim.lsp.buf.format()<CR> | :w<CR>")

-- split windows keymap
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- exit insert mode
keymap.set("i", "<C-l>", "<esc>")

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize +2<CR>")
keymap.set("n", "<C-Down>", ":resize -2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- tabs keymaps
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", ":tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- Move text up and down
keymap.set("n", "<A-Up>", ":m .-2<CR>==")
keymap.set("n", "<A-Down>", ":m .+1<CR>==")
keymap.set("n", "p", '"_dP')

---------------------
-- plugins keymaps --
---------------------

-- nvim-tree keymaps
keymap.set("n", "<leader>pv", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags

-- Null-LS keymap
keymap.set("n", "<leader>s", ":lua vim.lsp.buf.format()<cr>")

-- bufferline keymap
keymap.set("n", "bp", "<cmd>bprevious<CR>")
keymap.set("n", "<tab>", "<cmd>bnext<CR>")
keymap.set("n", "<leader>x", "<cmd>Bdelete<CR>")

-- dismiss noice message
keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice message" })

-- tmux navigator
keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>")
keymap.set("n", "<C-l>", ":TmuxNavigateright<cr>")
keymap.set("n", "<C-k>", ":TmuxNavigateup<cr>")
keymap.set("n", "<C-j>", ":TmuxNavigatedown<cr>")
keymap.set("n", "<C-p>", ":TmuxNavigateprevious<cr>")

if vim.g.neovide then
  keymap.set("n", "<C-s>", ":w<CR>")      -- Save
  keymap.set("v", "<C-c>", '"+y')         -- Copy
  keymap.set("n", "<C-v>", '"+P')         -- Paste normal mode
  keymap.set("v", "<C-v>", '"+P')         -- Paste visual mode
  keymap.set("c", "<C-v>", "<C-R>+")      -- Paste command mode
  keymap.set("i", "<C-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<C-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<C-v>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-v>", "<C-R>*", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<C-v>", "<C-R>*", { noremap = true, silent = true })
