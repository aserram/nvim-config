-- Leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

--*** NAVIGATION ***
-- Go back to nvim explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Navigate between windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

--Split windows
vim.keymap.set('n', '<leader>sp', ':sp<CR>')
vim.keymap.set('n', '<leader>vs', ':vs<CR>')

-- Keep cursor centered when Page+/-
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- When highlighted move up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

