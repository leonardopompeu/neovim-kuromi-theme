local config = require("kuromi.config")
local theme = require("kuromi.theme")

local M = {}

function M.setup(opts)
	config.setup(opts)

	-- comando opcional pra trocar flavour rápido
	vim.api.nvim_create_user_command("KuromiFlavour", function(cmd)
		config.options.flavour = cmd.args
		theme.apply()
	end, {
		nargs = 1,
		complete = function()
			return { "classic", "neon", "soft", "gothic" }
		end,
	})
end

function M.load()
	theme.apply()
end

return M
