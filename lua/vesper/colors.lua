local config = require("vesper.config")
local mix = require("vesper.utils").mix

local colors = {
	-- background colors
	white = "#FFFFFF",
	black = "#0a0a0a",
	bg = "#0a0a0a", -- editor.background
	bgDark = "#0a0a0a", -- titleBar.activeBackground
	bgDarker = "#222222", -- list.activeSelectionBackground
	bgFloat = "#0a0a0a", -- editorWidget.background
	bgOption = "#222222", -- input.background

	-- foreground colors
	fg = "#dbd7caee", -- editor.foreground
	fgAlt = "#bfbaaa", -- titleBar.activeForeground
	fgCommand = "#c391e6", -- focusBorder
	fgInactive = "#dedcd550", -- activityBar.inactiveForeground
	fgDisabled = "#dedcd550", -- gitDecoration.ignoredResourceForeground
	fgLineNr = "#dedcd550", -- editorLineNumber.foreground
	fgSelection = "#404040", -- editor.selectionBackground
	fgSelectionInactive = "#262626", -- editor.inactiveSelectionBackground

	-- border colors
	border = "#222222", -- dropdown.border
	borderFocus = "#c391e6", -- focusBorder
	borderDarker = "#222222", -- editorGroupHeader.tabsBorder

	-- ui colors
	greenLight = "#16a34a", -- terminal.ansiGreen
	red = "#fca5a5", -- errorForeground
	purple = "#c391e6", -- button.background
	redDark = "#fca5a5", -- terminal.ansiRed
	orange = "#eab308", -- terminal.ansiYellow
	primary = "#c391e6", -- focusBorder (main accent color)
	comment = "#dedcd590", -- descriptionForeground
	orangeLight = "#f59e0b", -- terminal.ansiBrightYellow
	green = "#16a34a", -- gitDecoration.addedResourceForeground
	yellowDark = "#eab308", -- terminal.ansiYellow
	purpleDark = "#c391e6", -- textLink.foreground
	symbol = "#06b6d4", -- terminal.ansiBrightCyan
	secondary = "#bfbaaa", -- statusBar.foreground
	terminalbrightblack = "#323232", -- terminal.ansiBlack

	-- diagnostic colors
	error = "#fca5a5", -- editorError.foreground
	warn = "#f59e0b", -- editorWarning.foreground
	info = "#0369a1", -- editorInfo.foreground
	hint = "#16a34a", -- editorHint.foreground

	-- Additional colors from Vesper Purple
	activeBorder = "#c391e6", -- tab.activeBorderTop
	highlight = "#c391e6", -- list.highlightForeground
	lineHighlight = "#222222", -- editor.lineHighlightBackground
	indentGuide = "#ffffff15", -- editorIndentGuide.background
	indentGuideActive = "#ffffff30", -- editorIndentGuide.activeBackground
	whitespace = "#ffffff15", -- editorWhitespace.foreground
	findMatch = "#eab30810", -- editor.findMatchBackground
	findMatchHighlight = "#eab30820", -- editor.findMatchHighlightBackground
	bracketMatch = "#4d937520", -- editorBracketMatch.background
	diffAdd = "#4d937550", -- diffEditor.insertedTextBackground
	diffDelete = "#ab595950", -- diffEditor.removedTextBackground
}

return colors
