return {
    {
        "mbbill/undotree",
        ---@module 'undotree.collector'
        ---@type UndoTreeCollector.Opts
        opts = {
        -- your options
        },
        config = function()
            -- Keymap for toggling undotree
            vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
        end,
    },
}
