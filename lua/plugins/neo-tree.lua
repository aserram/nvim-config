return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		opts = {
			-- Keymap for toggling neo-tree
			vim.keymap.set("n", "<leader>e", ":Neotree toggle left<CR>"),
		},
		config = function()
			local neo_tree = require("neo-tree")
			neo_tree.setup({
				-- Close Neo-tree if it is the last window left in the tab
				close_if_last_window = true,
				window = {
					mappings = {
						["l"] = "open",
						["h"] = "close_node",
					},
				},
			})
		end,
	},
}
