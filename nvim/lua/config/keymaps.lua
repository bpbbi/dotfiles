-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Copy to os clipboard
vim.keymap.set({ "n" }, "<M-c>", '<S-v>"+y', { desc = "Copy line to clipboard" })
vim.keymap.set({ "v" }, "<M-c>", '"+y', { desc = "Copy selection to clipboard" })
