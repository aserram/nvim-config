-- Tab & indentation
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Other global options
vim.opt.number = true
vim.opt.relativenumber = true

-- Search: Highlight and incremental
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Min lines above/below cursor
vim.opt.scrolloff = 10

-- Case insensitive unless capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Auto-sessions options
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
