return {
	"nvim-tree/nvim-tree.lua",
	lazy = false, -- Load immediately
	config = function()
		require("nvim-tree").setup({
			-- Current file in tree
			respect_buf_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				width = 999,
				side = "left",
				preserve_window_proportions = false,
			},
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = { enable = false },
				},
			},
			renderer = {
				icons = {
					show = {
						file = false,
						folder = false,
						folder_arrow = false,
						git = false,
					},
				},
			},
		})
	end,
}
