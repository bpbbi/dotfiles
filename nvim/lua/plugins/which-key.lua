local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

M.opts = {
  spec = {
    {
      -- unbind:
      { "<leader>K", group = "Keyword", hidden = true},
      mode = { "n", "x" },
      -- Coc:
      { "<leader>c", group = "Coc", icon = "" },
      { "<leader>cf", icon = "" },
      { "<leader>ct", icon = "DO" },
      { "<leader>ck", icon = "🡅", hidden = false },
      { "<leader>cj", icon = "🡇", hidden = false },

      { "<leader>x", group = "Diag", hidden = true }
    },
  },
  win = {
    title = false,
  },
  preset = "helix",
}

M.keys = {
  --coc keymaps
  { '<Leader>K', 
    'none',
  },
  { '<Leader>x', 
    'none',
  },
  { '<Leader>cf', 
    'none',
  },
  {
    "<leader>?",
    function()
      require("which-key").show({ global = false })
    end,
    desc = "Buffer Keymaps (which-key)",
  },
  {
    "<c-w><space>",
    function()
      require("which-key").show({ keys = "<c-w>", loop = true })
    end,
    desc = "Window Hydra Mode (which-key)",
  },
}

return M
-- {
--   config = function(_, opts)
--     local wk = require("which-key")
--     wk.setup(opts)
--     if not vim.tbl_isempty(opts.defaults) then
--       LazyVim.warn("which-key: opts.defaults is deprecated. Please use opts.spec instead.")
--       wk.register(opts.defaults)
--     end
--   end,
-- }
