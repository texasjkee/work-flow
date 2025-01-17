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
      width = 30, -- Set the width of the tree
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
  end
}
