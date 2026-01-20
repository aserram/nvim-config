-- Leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

--*** NAVIGATION ***
-- Go back to nvim explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })

