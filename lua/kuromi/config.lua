local M = {}

M.defaults = {
	flavour = "classic", -- classic | neon | soft | gothic
	transparent = false,
	dim_inactive = false,
	styles = {
		comments = { italic = true },
		keywords = { italic = false },
		functions = { bold = false },
		strings = {},
		variables = {},
	},
}

M.options = vim.deepcopy(M.defaults)

function M.setup(opts)
	M.options = vim.tbl_deep_extend("force", vim.deepcopy(M.defaults), opts or {})
end

return M
