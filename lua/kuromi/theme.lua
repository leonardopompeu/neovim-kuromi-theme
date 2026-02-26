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
	local bg2 = opts.transparent and "NONE" or c.bg2

	-- UI
	hl("Normal", { fg = c.fg, bg = bg })
	hl("NormalNC", { fg = c.fg, bg = bg })
	hl("EndOfBuffer", { fg = bg })
	hl("CursorLine", { bg = bg2 })
	hl("CursorColumn", { bg = bg2 })

	-- Visual selection (sem alpha em hex)
	-- Se quiser mais destaque: troque bg2 por c.purple (fica bem forte)
	hl("Visual", { bg = bg2 })

	hl("LineNr", { fg = c.com })
	hl("CursorLineNr", { fg = c.hotpink, bold = true })
	hl("SignColumn", { bg = bg })
	hl("VertSplit", { fg = c.bg2 })
	hl("WinSeparator", { fg = c.bg2 })

	hl("StatusLine", { fg = c.fg, bg = bg2 })
	hl("StatusLineNC", { fg = c.com, bg = bg2 })

	hl("Pmenu", { fg = c.fg, bg = bg2 })
	hl("PmenuSel", { fg = c.bg, bg = c.pink, bold = true })
	hl("PmenuSbar", { bg = c.bg2 })
	hl("PmenuThumb", { bg = c.com })

	hl("Search", { fg = c.bg, bg = c.yellow })
	hl("IncSearch", { fg = c.bg, bg = c.hotpink })
	hl("MatchParen", { fg = c.hotpink, bold = true })

	hl("Title", { fg = c.lilac, bold = true })
	hl("Directory", { fg = c.cyan })

	hl("ErrorMsg", { fg = c.red, bold = true })
	hl("WarningMsg", { fg = c.yellow, bold = true })

	-- Syntax
	hl("Comment", vim.tbl_extend("force", { fg = c.com }, opts.styles.comments or {}))
	hl("String", vim.tbl_extend("force", { fg = c.pink }, opts.styles.strings or {}))
	hl("Character", { fg = c.pink })
	hl("Number", { fg = c.yellow })
	hl("Float", { fg = c.yellow })
	hl("Boolean", { fg = c.yellow })

	hl("Function", vim.tbl_extend("force", { fg = c.lilac }, opts.styles.functions or {}))
	hl("Identifier", { fg = c.fg })
	hl("Constant", { fg = c.cyan })
	hl("Type", { fg = c.lilac })
	hl("Keyword", vim.tbl_extend("force", { fg = c.purple }, opts.styles.keywords or {}))
	hl("Statement", { fg = c.purple })
	hl("Operator", { fg = c.cyan })
	hl("PreProc", { fg = c.purple })
	hl("Special", { fg = c.hotpink })

	-- Whitespace / invisibles
	hl("Whitespace", { fg = c.bg2 })
	hl("NonText", { fg = c.bg2 })

	-- Diagnostics (LSP)
	hl("DiagnosticError", { fg = c.red })
	hl("DiagnosticWarn", { fg = c.yellow })
	hl("DiagnosticInfo", { fg = c.cyan })
	hl("DiagnosticHint", { fg = c.lilac })

	-- Underlines for diagnostics
	hl("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
	hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.yellow })
	hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.cyan })
	hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.lilac })

	-- Diff / Git (sem alpha)
	hl("DiffAdd", { bg = bg2, fg = c.green })
	hl("DiffChange", { bg = bg2, fg = c.blue })
	hl("DiffDelete", { bg = bg2, fg = c.red })
	hl("DiffText", { bg = bg2, fg = c.hotpink, bold = true })

	-- Common plugin-ish groups (não quebra nada se plugin não existir)
	hl("GitSignsAdd", { fg = c.green })
	hl("GitSignsChange", { fg = c.blue })
	hl("GitSignsDelete", { fg = c.red })

	-- Quickfix / diagnostics list
	hl("QuickFixLine", { bg = bg2, bold = true })
end

return M
