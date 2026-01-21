return {
        "nvimtools/none-ls.nvim",
        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    -- Lua formatting
                    null_ls.builtins.formatting.stylua,
                    -- null_ls.builtins.diagnostics.selene,

                    -- Python formatting and linter
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.diagnostics.pylint,
                },
            })
            vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
        end,
}
