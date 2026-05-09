local ls = require "luasnip"

-- some shorthands...
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
-- local sn = ls.snippet_node
-- local f = ls.function_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node

-- some extras
local rep = require("luasnip.extras").rep
local fmt = require("luasnip.extras.fmt").fmt
-- local p = require("luasnip.extras").partial
-- local m = require("luasnip.extras").match
-- local n = require("luasnip.extras").nonempty
-- local dl = require("luasnip.extras").dynamic_lambda
-- local fmta = require("luasnip.extras.fmt").fmta
-- local types = require "luasnip.util.types"
-- local conds = require "luasnip.extras.conditions"
-- local conds_expand = require "luasnip.extras.conditions.expand"

ls.add_snippets("lua", {

  s("end", t "end"),

  s("req", {
    t "local ",
    i(1, "mod"),
    t ' = require("',
    i(2, "module"),
    t '")',
  }),

  s("fn", {
    t "function ",
    i(1, "name"),
    t "(",
    i(2),
    t { ")", "  " },
    i(3),
    t { "", "end" },
  }),

  s(
    "fmt2",
    fmt(
      [[
		foo({1}, {3}) {{
			return {2} * {4}
		}}
		]],
      {
        i(1, "x"),
        rep(1),
        i(2, "y"),
        rep(2),
      }
    )
  ),

  -- s("mod",{
  --   t("local M = {}"),
  --   t(""),
  --   t("M.config function()"),
  --   t("return {"),
  --   i(1),
  --   t("}"),
  --   t({"", "end"}),
  --   t("end"),
  -- }),
})
