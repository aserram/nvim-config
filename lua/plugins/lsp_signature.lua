return {
	"ray-x/lsp_signature.nvim",
	event = "VeryLazy", -- lazy-load after startup
	opts = {
		bind = true, -- automatically attach to LSP
		hint_enable = true, -- show virtual hints
		extra_trigger_chars = { "(", "," }, -- triggers signature help on '(' or ','
	},
}
