local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt

-- helper function to insert the visual selection
local function sel(_, snip)
	return snip.env.SELECT_DEDENT or snip.env.SELECT_RAW or ""
end

return {
	s(
		{ s = "typ", trig = "color", dscr = "Shorthand for adding color to selected text" },
		fmt("#text(fill: {}, [{}])", {
			i(1, "red"), -- default color
			f(sel), -- replaced with selected text
		})
	),
}
