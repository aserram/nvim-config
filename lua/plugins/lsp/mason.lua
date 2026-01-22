return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "lua_ls", "pyright" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        {
            "neovim/nvim-lspconfig",
            config = function()
                --Delete default key and replace below
                -- replace with <leader>ce
                vim.keymap.del("n", "<C-w>d")
                -- replace with <leader>ca
                vim.keymap.del("n", "gra")

                vim.api.nvim_create_autocmd("LspAttach", {
                    callback = function(args)
                        local opts = { buffer = args.buf }
                        -- Add diagnostic popup -> { current_line = true } | always = true | disable = false
                        -- virtual_lines (diagnostic below line, more details), virtual_text (diagnostic next to line, less info)
                        vim.diagnostic.config({
                            virtual_lines = { current_line = true },
                            virtual_text = false,
                        })
                        -- Keymaps
                        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                        -- vim.keymap.set("n", "<leader>ce", vim.diagnostic.open_float, opts)
                        vim.keymap.set("n", "<leader>cd", vim.diagnostic.setloclist, opts)
                    end,
                })
            end,
        },
    },
}
