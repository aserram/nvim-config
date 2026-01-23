return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-python",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python")({
					dap = { justMyCode = false },
					args = { "--log-level", "DEBUG" },
					runner = "pytest",
					python = "venv_lnx/bin/python",
					-- python = function()
					-- 	local venv = os.getenv("VIRTUAL_ENV")
					-- 	if venv and #venv > 0 then
					-- 		return venv .. "/bin/python"
					-- 	end
					-- 	return "python"
					-- end,
				}),
			},
		})
	end,
}
