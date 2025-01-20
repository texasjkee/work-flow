return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      disable_background = true, -- Off background
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
