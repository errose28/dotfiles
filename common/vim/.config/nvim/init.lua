-- TABS --

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.autoindent = true
-- Make shift-tab unindent.
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })

-- WHITESPACE --

vim.opt.list = true
vim.opt.listchars = 'nbsp:␣,lead:·,trail:·,tab:→ ,extends:❯,precedes:❮'

