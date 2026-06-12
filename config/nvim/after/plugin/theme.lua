local lush = require("lush")
local hsl = lush.hsl

local colors = {
	black = hsl("#000000"),
	dark_gray = hsl("#1e1f20"),
	white = hsl("#e3e3e3"),
	light_white = hsl("#9d9d9d"),
	red = hsl("#d56e6e"),
	cyan = hsl("#85b5ba"),
	green = hsl("#84ab60"),
	purple = hsl("#8b7ec8"),
	pink = hsl("#785880"),
	blue = hsl("#789ff3"),
}

local theme = lush(function()
	return {
		Normal { bg = colors.black, fg = colors.white },
		Visual { bg = colors.dark_gray },
		CursorLine { bg = Normal.bg },
		StatusLine { bg = Normal.bg.lighten(10) },

		TabLineFill { bg = colors.black },
		TabLineSel { bg = colors.dark_gray },
		TabLine { bg = colors.black },
		Keyword { fg = colors.red }, 
		Function { fg = colors.blue },
		String { fg = colors.green },
		Constant { fg = colors.cyan, priority = 1 },
		Type { fg = colors.purple, priority = 1 },
		Special { Type },
		Identifier { fg = colors.white },
		Directory { fg = colors.cyan },
		Error { fg = colors.red },
		Delimiter { fg = colors.white },
		Operator { fg = colors.light_white },

		BlinkCmpMenu { bg = colors.black, fg = colors.white }, 
		BlinkCmpMenuBorder { bg = colors.black, fg = colors.dark_gray }, 

		BlinkCmpMenuSelection { bg = colors.dark_gray, fg = colors.white }, 

		Pmenu { BlinkCmpMenu },
		PmenuSel { BlinkCmpMenuSelection },

		sym("@punctuation.bracket") { fg = colors.white },

		sym("@type") { Type },
		sym("@type.builtin") { Type },
		sym("@type.builtin.c") { Type },
		sym("@type.primitive") { Type },

		sym("@variable.member") { fg = colors.white },
		sym("@field") { fg = colors.white }, 
		sym("@property") { fg = colors.white }, 
	}
end)

lush.apply(theme)

return theme
