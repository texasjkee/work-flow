return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local actions = require('telescope.actions')
      require('telescope').setup({
        defaults = {
          mappings = {
            i = {
              ['<C-k>'] = actions.move_selection_previous,
              ['<C-j>'] = actions.move_selection_next,
              ['<C-l>'] = actions.select_default,
              ['<C-w>'] = actions.delete_buffer,
            },
            n = {
              ['<C-k>'] = actions.move_selection_previous,
              ['<C-j>'] = actions.move_selection_next,
              ['<C-l>'] = actions.select_default,
              ['<C-w>'] = actions.delete_buffer,
            },
          },
        },
      })
      --Background telescope
      local set_hl = vim.api.nvim_set_hl
        set_hl(0, "TelescopeNormal", { bg = "#000000", fg = "#e0def4" })
        set_hl(0, "TelescopeBorder", { bg = "#000000", fg = "#e0def4" })
        set_hl(0, "TelescopePromptNormal", { bg = "#000000", fg = "#e0def4" })
        set_hl(0, "TelescopePromptBorder", { bg = "#000000", fg = "#2a273f" })
        set_hl(0, "TelescopeResultsNormal", { bg = "#000000", fg = "#e0def4" })
        set_hl(0, "TelescopePreviewNormal", { bg = "#000000", fg = "#e0def4" })
      end
    },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup ({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown {
            }
          }
        }
      })
      require('telescope').load_extension('ui-select')
    end
  },
}
