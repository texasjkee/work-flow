return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})

			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gD", ":Telescope lsp_definitions<CR>", { silent = true })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
			vim.keymap.set("n", "<leader>.", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, {})
			vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, {})
			vim.keymap.set("n", "<leader>dd", vim.diagnostic.disable, {})
			vim.keymap.set("n", "<leader>de", vim.diagnostic.enable, {})
		end,
	},
}
