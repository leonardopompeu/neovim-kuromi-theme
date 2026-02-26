local config = require("kuromi.config")
local palette = require("kuromi.palette")

local M = {}

local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply()
	local opts = config.options
	local c = palette.get(opts.flavour)

	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.cmd("highlight clear")
	if vim.fn.exists("syntax_on") == 1 then
		vim.cmd("syntax reset")
	end
	vim.g.colors_name = "kuromi"

	local bg = opts.transparent and "NONE" or c.bg

	-- UI
	hl("Normal", { fg = c.fg, bg = bg })
	hl("NormalNC", { fg = c.fg, bg = bg })
	hl("CursorLine", { bg = opts.transparent and "NONE" or c.bg2 })
	hl("Visual", { bg = c.pink .. "40" }) -- 40 = alpha-ish (nvim aceita #RRGGBBAA em versões recentes; se não, troca por bg2)
	hl("LineNr", { fg = c.com })
	hl("CursorLineNr", { fg = c.hotpink, bold = true })
	hl("VertSplit", { fg = c.bg2 })
	hl("StatusLine", { fg = c.fg, bg = c.bg2 })
	hl("Pmenu", { fg = c.fg, bg = c.bg2 })
	hl("PmenuSel", { fg = c.bg, bg = c.pink, bold = true })

	-- Syntax (básico e já bonito)
	hl("Comment", vim.tbl_extend("force", { fg = c.com }, opts.styles.comments or {}))
	hl("String", vim.tbl_extend("force", { fg = c.pink }, opts.styles.strings or {}))
	hl("Number", { fg = c.yellow })
	hl("Boolean", { fg = c.yellow })
	hl("Function", vim.tbl_extend("force", { fg = c.lilac }, opts.styles.functions or {}))
	hl("Identifier", { fg = c.fg })
	hl("Keyword", vim.tbl_extend("force", { fg = c.purple }, opts.styles.keywords or {}))
	hl("Type", { fg = c.lilac })
	hl("Operator", { fg = c.cyan })

	-- Diagnostics
	hl("DiagnosticError", { fg = c.red })
	hl("DiagnosticWarn", { fg = c.yellow })
	hl("DiagnosticInfo", { fg = c.cyan })
	hl("DiagnosticHint", { fg = c.lilac })

	-- Git/Diff
	hl("DiffAdd", { bg = c.green .. "22" })
	hl("DiffChange", { bg = c.blue .. "22" })
	hl("DiffDelete", { bg = c.red .. "22" })
end

return M
