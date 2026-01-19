return {
    {
        "tpope/vim-fugitive",
        opts = {
        -- your options
        },
        config = function()
            -- Keymap for git commands
            vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
        end,
    },
}
