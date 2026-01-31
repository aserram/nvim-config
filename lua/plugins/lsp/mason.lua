return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = { "lua_ls", "pyright", "ruff" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{
			"neovim/nvim-lspconfig",
			event = { "BufReadPre", "BufNewFile" },
			config = function()
				-- 1. Manually ensure StyLua is installed since it's not an LSP
				local mr = require("mason-registry")
				local tool = "stylua"
				if not mr.is_installed(tool) then
					vim.cmd("MasonInstall " .. tool)
				end

				--Delete default key and replace below
				-- replace with <leader>ce
				vim.keymap.del("n", "<C-w>d")
				-- replace with <leader>ca
				vim.keymap.del("n", "gra")

				vim.api.nvim_create_autocmd("LspAttach", {
					callback = function(args)
						local opts = { buffer = args.buf, silent = true }
						-- Add diagnostic popup -> { current_line = true } | always = true | disable = false
						-- virtual_lines (diagnostic below line, more details), virtual_text (diagnostic next to line, less info)
						vim.diagnostic.config({
							virtual_lines = { current_line = true },
							virtual_text = false,
						})
						-- Keymaps
						opts.desc = "LSP: hover"
						vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

						opts.desc = "LSP: code actions"
						vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

						-- opts.desc = "LSP: diagnostic"
						-- vim.keymap.set("n", "<leader>ce", vim.diagnostic.open_float, opts)

						opts.desc = "LSP: diagnostics list"
						vim.keymap.set("n", "<leader>cd", vim.diagnostic.setloclist, opts)

						opts.desc = "LSP: format"
						vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, opts)

						-- 3. Auto-format on save
						-- This uses Ruff for Python and Lua_LS/StyLua for Lua automatically
						vim.api.nvim_create_autocmd("BufWritePre", {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end,
				})
			end,
		},
	},
}
