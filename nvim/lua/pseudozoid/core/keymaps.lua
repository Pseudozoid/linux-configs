vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- window navigation
keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move focus to the left window" })
keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move focus to the lower window" })
keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move focus to the upper window" })
keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move focus to the right window" })

-- toggleterm (floating)
keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle floating terminal" })
keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

-- copypaste fix
keymap.set("v", "p", '"_dP', { desc = "Paste over text without losing copied item" })
