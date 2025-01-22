return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { silent = true })
			vim.keymap.set("n", "<leader>gs", ":Gitsigns toggle_current_line_blame<CR>", { silent = true })
		end,
	},
}
