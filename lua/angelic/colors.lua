local config = require("angelic.config")
local mix = require("angelic.utils").mix

local colors = {
	-- background colors
	white = "#FFFFFF",
	black = "#0A0A0A",
	bg = "#0D0D0D", -- editor.background
	bgDark = "#1A1A1A", -- titleBar.activeBackground
	bgDarker = "#222222", -- list.activeSelectionBackground
	bgFloat = "#0A0A0A", -- editorWidget.background
	bgOption = "#222222", -- input.background

	-- foreground colors
	fg = "#E0E0E0", -- editor.foreground (sin alpha)
	fgAlt = "#BFBAAA", -- titleBar.activeForeground
	fgCommand = "#C391E6", -- focusBorder
	fgInactive = "#DEDCD5", -- activityBar.inactiveForeground (sin alpha)
	fgDisabled = "#DEDCD5", -- gitDecoration.ignoredResourceForeground
	fgLineNr = "#DEDCD5", -- editorLineNumber.foreground
	fgSelection = "#404040", -- editor.selectionBackground
	fgSelectionInactive = "#262626", -- editor.inactiveSelectionBackground

	-- border colors
	border = "#222222", -- dropdown.border
	borderFocus = "#C391E6", -- focusBorder
	borderDarker = "#222222", -- editorGroupHeader.tabsBorder

	-- ui colors
	greenLight = "#50FA7B", -- terminal.ansiGreen
	red = "#FCA5A5", -- errorForeground
	purple = "#FF79C6", -- button.background
	redDark = "#FCA5A5", -- terminal.ansiRed
	orange = "#FFB86C", -- terminal.ansiYellow
	primary = "#C391E6", -- focusBorder (main accent color)
	comment = "#7F7F7F", -- descriptionForeground (sin alpha)
	orangeLight = "#F59E0B", -- terminal.ansiBrightYellow
	green = "#16A34A", -- gitDecoration.addedResourceForeground
	yellowDark = "#EAB308", -- terminal.ansiYellow
	purpleDark = "#C391E6", -- textLink.foreground
	symbol = "#BD93F9", -- terminal.ansiBrightCyan
	secondary = "#BFBAAA", -- statusBar.foreground
	terminalbrightblack = "#323232", -- terminal.ansiBlack

	-- I don't know
	string = "#C3E88D", -- Verde claro para strings
	keyword = "#BB86FC", -- Morado claro para keywords (public, return)
	operator = "#E0E0E0",

	-- diagnostic colors
	error = "#FCA5A5", -- editorError.foreground
	warn = "#F59E0B", -- editorWarning.foreground
	info = "#0369A1", -- editorInfo.foreground
	hint = "#16A34A", -- editorHint.foreground

	class_pink = "#FF79C6", -- Rosa para 'UserFactory'
	type_purple = "#BD93F9", -- Morado para 'Factory'
}

return colors
