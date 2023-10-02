vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- This keybinding uses jk as the escape key to exit a mode
vim.api.nvim_set_keymap("i", "jk", "<ESC>", {noremap = true})

vim.api.nvim_set_keymap("n", "ww", ":update<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "qq", ":q!<CR>", {noremap = true})
--vim.api.nvim_set_keymap("n", "xx", ":x!<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>",  { noremap = true})
-- This keymap clears search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
