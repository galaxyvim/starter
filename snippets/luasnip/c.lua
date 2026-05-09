local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node

return {
	s("cluasnip", t("also loaded!!"))
}, {
	s("autotrig", t("autotriggered, if enabled"))
}
