-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Copy to os clipboard
local keyset = vim.keymap.set
keyset({ "n" }, "<M-c>", '<S-v>"+y', { desc = "Copy line to clipboard" })
keyset({ "v" }, "<M-c>", '"+y', { desc = "Copy selection to clipboard" })
keyset({ "n" }, "<leader>u9", "<CMD>set list!<CR>", { desc = "Toggle unprintable symbols", silent = true})
keyset({ "n" }, "<leader>c", "",{desc = "Group coc"})
