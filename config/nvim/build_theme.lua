local colorscheme = require("after.plugin.theme")
local lushwright = require("shipwright.transform.lush")

run(colorscheme,
	lushwright.to_lua,
	{append, {"set background=dark"}},
	{overwrite, "theme.lua"}
)
