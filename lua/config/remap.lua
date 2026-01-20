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
