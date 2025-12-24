-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Zen background
zen = {
  toggles = {
    dim = false,
    git_signs = false,
    mini_diff_signs = false,
  },
  win = {
    backdrop = {
      transparent = false,
      blend = 99,
    }, -- This needs to be 99, 100 results in same behaviour as default setup
  },
}
