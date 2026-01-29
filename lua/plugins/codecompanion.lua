return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		-- Adapter definitions
		adapters = {
			ollama = function()
				return require("codecompanion.adapters").extend("ollama", {
					env = {
						url = "http://localhost:11434",
					},
					schema = {
						model = {
							default = "qwen2.5:7b-instruct-q5_K_M",
						},
					},
				})
			end,
		},

		-- Match the structure from the official docs
		interactions = {
			chat = {
				adapter = "ollama",
				model = "qwen2.5:7b-instruct-q5_K_M",
			},
		},

		-- NOTE: log_level lives in opts.opts (yes, a little weird)
		opts = {
			log_level = "DEBUG",
		},
	},
}
