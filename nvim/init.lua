local args = vim.fn.argv()
if #args == 1 and vim.fn.isdirectory(args[1]) == 1 then
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      require('telescope.builtin').find_files({
        cwd = vim.fn.fnameescape(args[1]),
      })
    end,
  })
end

require('config.lazy')
require('config.mapping')
require('config.settings')
