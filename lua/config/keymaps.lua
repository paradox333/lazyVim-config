-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.keymap.set(option mode, your keymap, actual keymap, other option)

-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- Save file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, desc = "Save window" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { noremap = true, desc = "Save window" })
vim.keymap.set("n", "<leader>a", "<cmd>q!<cr>", { noremap = true, desc = "Save window" })
