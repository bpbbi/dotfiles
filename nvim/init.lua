-- bootstrap lazy.nvim, LazyVim and your plugins
-- colors
vim.cmd.colorscheme("gecs")

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.lazy")

require('lualine').setup()
