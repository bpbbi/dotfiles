vim.cmd.colorscheme('gecs')

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.fillchars = {
  vert = '│',
  horiz = '─',
  eob  = '~',    -- hide ~
  fold = '·',
  diff = '╱',
  msgsep = '―',
  stl = "🮂",
  stlnc = "🮂",
}

require("config.lazy")
require("config.keybindings")
