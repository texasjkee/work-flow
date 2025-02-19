local M = {}

function M.log_var()
	local varname = vim.fn.expand("<cword>")
	local log_statement = "console.log('" .. varname .. ":', " .. varname .. ");"
	vim.api.nvim_put({ log_statement }, "l", true, true)
end

return M
