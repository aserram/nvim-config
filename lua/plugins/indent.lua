return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	ops = {},
	config = function()
		-- local highlight = {
		--     "CursorColumn",
		--     "Whitespace",
		-- }
		local highlight = {
			"RainbowYellow",
			"RainbowGreen",
			"RainbowViolet",
			"RainbowCyan",
			"RainbowRed",
			"RainbowBlue",
			"RainbowOrange",
		}

		local hooks = require("ibl.hooks")
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#c0b07a" })
			vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#8fb07a" })
			vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#a88ac0" })
			vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#7aa8a8" })
			vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#c06a6a" })
			vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7aa2c0" })
			vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#c08a6a" })
		end)

		require("ibl").setup({
			indent = { highlight = highlight, char = "▏" },
			scope = { enabled = false },
		})
	end,
}
