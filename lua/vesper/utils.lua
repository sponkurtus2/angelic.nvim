local M = {}

function M.setup()
	local colors = {
		-- Copia aquí el objeto colors de arriba
	}

	local theme = {
		-- Grupos de highlights
		Normal = { fg = colors.fg, bg = colors.bg },
		NormalFloat = { fg = colors.fg, bg = colors.bgFloat },
		Comment = { fg = colors.comment, italic = true },

		-- Línea de números
		LineNr = { fg = colors.fgLineNr },
		CursorLineNr = { fg = colors.fgAlt, bold = true },

		-- Selección
		Visual = { bg = colors.fgSelection },
		VisualNOS = { bg = colors.fgSelectionInactive },

		-- Búsqueda
		Search = { bg = colors.findMatch },
		IncSearch = { bg = colors.findMatchHighlight },

		-- Diagnósticos
		DiagnosticError = { fg = colors.error },
		DiagnosticWarn = { fg = colors.warn },
		DiagnosticInfo = { fg = colors.info },
		DiagnosticHint = { fg = colors.hint },

		-- Sintaxis
		String = { fg = colors.greenLight },
		Number = { fg = colors.orange },
		Boolean = { fg = colors.orange },
		Function = { fg = colors.purple },
		Identifier = { fg = colors.purpleDark },
		Keyword = { fg = colors.purple, italic = true },
		Operator = { fg = colors.symbol },
		Type = { fg = colors.primary },
		Special = { fg = colors.purple },

		-- Pestañas
		TabLineSel = { fg = colors.fg, bg = colors.bg, bold = true },
		TabLine = { fg = colors.fgInactive, bg = colors.bgDark },
		TabLineFill = { bg = colors.bgDark },

		-- Barra de estado
		StatusLine = { fg = colors.secondary, bg = colors.bgDark },
		StatusLineNC = { fg = colors.fgInactive, bg = colors.bgDark },

		-- Borde de ventana
		WinSeparator = { fg = colors.border, bg = colors.bg },

		-- Cursor
		CursorLine = { bg = colors.lineHighlight },
		CursorColumn = { bg = colors.lineHighlight },

		-- Indentación
		Whitespace = { fg = colors.whitespace },
		IndentBlanklineChar = { fg = colors.indentGuide },
		IndentBlanklineContextChar = { fg = colors.indentGuideActive },

		-- Coincidencia de corchetes
		MatchParen = { bg = colors.bracketMatch, bold = true },

		-- Diffs
		DiffAdd = { bg = colors.diffAdd },
		DiffDelete = { bg = colors.diffDelete },
		DiffChange = { bg = colors.bgOption },
		DiffText = { bg = colors.bgDarker },

		-- Más grupos según necesites...
	}

	-- Aplicar los highlights
	for group, styles in pairs(theme) do
		vim.api.nvim_set_hl(0, group, styles)
	end
end

return M
