return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        null_ls.setup({
            sources = {
                -- Lua formatting
                null_ls.builtins.formatting.stylua,
                -- null_ls.builtins.diagnostics.selene,

                -- Python formatting and linter
                -- null_ls.builtins.formatting.black,
                -- null_ls.builtins.diagnostics.pylint,

                -- Python black-formatter
                null_ls.builtins.formatting.black.with({
                    extra_args = { "--line-length", "120" },
                }),

                -- Pythin pylint linter
                null_ls.builtins.diagnostics.pylint.with({
                    extra_args = {
                        "--disable=missing-class-docstring",
                        "--disable=missing-function-docstring",
                        "--disable=missing-module-docstring",
                        "--disable=invalid-name",
                        "--extension-pkg-whitelist=pygame",
                        "--max-line-length=120", -- match black-formatter config
                    },
                }),
            },

            -- Config to format on save
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                            -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
    end,
}
