-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Copy to os clipboard
local keyset = vim.keymap.set
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
keyset({ "n" }, "<M-c>", '<S-v>"+y', { desc = "Copy line to clipboard" })
keyset({ "v" }, "<M-c>", '"+y', { desc = "Copy selection to clipboard" })
keyset({ "n" }, "<leader>u9", "<CMD>set list!<CR>", { desc = "Toggle unprintable symbols", silent = true})
keyset({ "n" }, "<leader>c", "",{desc = "Group coc"})
-- Move to window using the <ctrl> hjkl keys
keyset("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keyset("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keyset("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keyset("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

