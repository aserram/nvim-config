return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        -- { "antosha417/nvim-lsp-file-operations", config = true },
        -- { "folke/lazydev.nvim", opts = {} },
    },
    config = function()
        -- Setup nvim-cmp
        local cmp = require("cmp")
        cmp.setup({
            sources = {
                { name = "nvim_lsp" },
            },
        })

        -- Setup LSP capabilities for autocompletion
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Use vim.lsp.config API
        vim.lsp.config("*", {
            capabilities = capabilities,
        })
    end,
}
