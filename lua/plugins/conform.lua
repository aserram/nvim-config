return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Tell conform to use ruff for python
			python = { "ruff_organize_imports", "ruff_format" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
