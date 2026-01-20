return {
    "hrsh7th/cmp-nvim-lsp",
    event = "InsertEnter",
    dependencies = {
        -- "hrsh7th/cmp-nvim-lua", -- Neovim Lua API completions (vim.*)
        -- { "antosha417/nvim-lsp-file-operations", config = true },
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
