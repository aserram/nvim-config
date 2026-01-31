return {
    "hrsh7th/cmp-nvim-lsp",
    event = "InsertEnter",
    dependencies = {
        { "antosha417/nvim-lsp-file-operations", config = true },
        { "folke/lazydev.nvim",                  opts = {} },
    },
    config = function()
        -- Setup LSP capabilities for autocompletion
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        -- Setup all servers using moder vim.lsp.config API
        vim.lsp.config("*", {
            capabilities = capabilities,
        })
    end,
}
