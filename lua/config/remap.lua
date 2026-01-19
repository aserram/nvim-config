-- Leader key
--- Tab -> 4 spaces
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

--*** NAVIGATION ***
-- Go back to nvim explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

