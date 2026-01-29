return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				chat = {
					adapter = "ollama",
				},
				inline = {
					adapter = "ollama",
				},
				agent = {
					adapter = "ollama",
				},
			},
			adapters = {
				ollama = function()
					return require("codecompanion.adapters").extend("ollama", {
						name = "qwen2.5:7b-instruct-q5_K_M",
						schema = {
							model = {
								default = "qwen2.5:7b-instruct-q5_K_M",
							},
							num_ctx = {
								default = 8192,
							},
							num_predict = {
								default = -1,
							},
						},
					})
				end,
			},
		})
	end,
}
