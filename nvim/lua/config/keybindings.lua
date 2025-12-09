
vim.keymap.set('n', '<M-c>', '<S-v> "+y', { desc = 'Open new tab' })
vim.keymap.set('v', '<M-c>', '"+y', { desc = 'Open new tab' })
vim.keymap.set('t', '<ESC>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- tabs:
vim.keymap.set({ 'n', 'v' }, '<leader>1', 'gt1<CR>', { desc = 'Go to tab 1' , silent = true }) 
vim.keymap.set({ 'n', 'v' }, '<leader>2', 'gt2<CR>', { desc = 'Go to tab 2' , silent = true }) 
vim.keymap.set({ 'n', 'v' }, '<leader>3', 'gt3<CR>', { desc = 'Go to tab 3' , silent = true }) 
vim.keymap.set({ 'n', 'v' }, '<leader>4', 'gt4<CR>', { desc = 'Go to tab 4' , silent = true })
vim.keymap.set({ 'n', 'v' }, '<leader>!', ':tabm0 <CR>', { desc = 'Move tab to first position' , silent = true }) 

