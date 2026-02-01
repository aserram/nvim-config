return {
	"olimorris/codecompanion.nvim",
	version = "^18.5.1",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codecompanion").setup({
			display = {
				chat = {
					window = {
						position = "right",
						width = 0.35,
					},
				},
			},
			interactions = {
				chat = {
					-- You can specify an adapter by name and model (both ACP and HTTP)
					adapter = {
						name = "ollama",
						model = "qwen2.5:7b-instruct-q5_K_M_pycoder",
					},
				},
				inline = {
					adapter = {
						name = "ollama",
						model = "qwen2.5:7b-instruct-q5_K_M_pycoder",
					},
				},
				cmd = {
					adapter = {
						name = "ollama",
						model = "qwen2.5:7b-instruct-q5_K_M_pycoder",
					},
				},
			},
		})
		-- Keymaps
		vim.keymap.set({ "n", "v" }, "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
		vim.keymap.set(
			{ "n", "v" },
			"<Leader>a",
			"<cmd>CodeCompanionChat Toggle<cr>",
			{ noremap = true, silent = true }
		)
		vim.keymap.set("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })
		-- Expand 'cc' into 'CodeCompanion' in the command line
		vim.cmd([[cab cc CodeCompanion]])
	end,
}
