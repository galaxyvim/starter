local ls = require "luasnip"
local i = ls.insert_node
local s = ls.snippet
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

local NW = vim.wo.numberwidth
local W = vim.o.columns
-- local H = vim.o.lines
local HF = (W / 2) - NW

local cs = vim.bo.commentstring or ""
local lc, rc = cs:match "^(.-)%s*%%s%s*(.-)$"
lc = lc or ""
rc = rc or ""
local CW = #lc + (#rc or 0)

return {
  s("snip", t "Hello, luasnip!"),

  ---------------------[ Separate Styles ]-------------------------------

  s("sep.a", {
    t(lc .. string.rep("-", HF - (CW + 4)) .. "[ "),
    i(1),
    t(" ]" .. string.rep("-", HF) .. rc),
  }),

  s("sep.b", {
    t(lc .. string.rep("-", HF - (CW + 4)) .. "▶ "),
    i(1),
    t(" ◀" .. string.rep("-", HF) .. rc),
  }),

  s("sep.c", {
    t(lc .. "[[" .. string.rep("=", HF - (CW + 4)) .. " "),
    i(1),
    t(" " .. string.rep("=", HF) .. "]]" .. rc),
  }),

  s("sep.d", {
    t(lc .. string.rep(">", HF - (CW + 4)) .. "[ "),
    i(1),
    t(" ]" .. string.rep("<", HF) .. rc),
  }),

  s("sep.e", {
    t(lc .. string.rep(".", HF - (CW + 4)) .. "[ "),
    i(1),
    t(" ]" .. string.rep(".", HF) .. rc),
  }),

  s("sep.f", {
    t(lc .. string.rep("█", HF - (CW + 4)) .. "[ "),
    i(1),
    t(" ]" .. string.rep("█", HF) .. rc),
  }),

  s("sep.g", {
    t(lc .. "---[ "),
    i(1),
    t(" ]---" .. rc),
  }),

  s("sep.h", {
    t(lc .. string.rep("═", HF - (CW + 4)) .. "╡ "),
    i(1),
    t(" ╞" .. string.rep("═", HF) .. rc),
  }),

  s("sep.i", {
    t(lc .. string.rep("#", HF - (CW + 4)) .. "> "),
    i(1),
    t(" <" .. string.rep("#", HF) .. rc),
  }),

  s("sep.j", {
    t(lc .. string.rep("─", HF - (CW + 4)) .. "▶ "),
    i(1),
    t(" ◀" .. string.rep("─", HF) .. rc),
  }),

  --------------------[ Separate Line Style ]-------------------------------

  s("sepl.a", {
    t(lc .. string.rep("-", W - CW) .. rc),
  }),

  s("sepl.b", {
    t(lc .. string.rep("━", W - CW) .. rc),
  }),

  s("sepl.c", {
    t(lc .. string.rep("=", W - CW) .. rc),
  }),

  s("sepl.d", {
    t(lc .. string.rep(".", W - CW) .. rc),
  }),

  s("sepl.e", {
    t(lc .. string.rep("═", W - CW) .. rc),
  }),

  s("sepl.f", {
    t(lc .. string.rep("█", W - CW) .. rc),
  }),

  s("sepl.g", {
    t(lc .. string.rep(">", W - CW) .. rc),
  }),

  s("sepl.h", {
    t(lc .. string.rep("~", W - CW) .. rc),
  }),

  s("sepl.i", {
    t(lc .. string.rep("#", W - CW) .. rc),
  }),

  s("sepl.j", {
    t(lc .. string.rep("─", W - CW) .. rc),
  }),

  ----------------------[ Comment Styles ]-------------------------------

  s(
    "comm.a",
    fmt(
      string.format(
        [[
  %s--------------------%s
  %s------ {1}%s
  %s--------------------%s
  ]],
        lc,
        rc,
        lc,
        rc,
        lc,
        rc
      ),
      { i(1) }
    )
  ),

  s(
    "comm.b",
    fmt(
      string.format(
        [[
%s============================%s
%s|| {1} ||%s
%s============================%s
]],
        lc,
        rc,
        lc,
        rc,
        lc,
        rc
      ),
      { i(1) }
    )
  ),

  s(
    "comm.c",
    fmt(
      string.format(
        [[
%s>>>>>>>>>>>>>>>>>>>>>>>>>>>>%s
%s>>> {1} <<<%s
%s<<<<<<<<<<<<<<<<<<<<<<<<<<<<%s
]],
        lc,
        rc,
        lc,
        rc,
        lc,
        rc
      ),
      { i(1) }
    )
  ),

  s(
    "comm.d",
    fmt(
      string.format(
        [[
%s─── {1} ───%s
]],
        lc,
        rc
      ),
      { i(1) }
    )
  ),

  s(
    "comm.e",
    fmt(
      string.format(
        [[
%s────────────────────────────%s
%s  {1}%s
%s────────────────────────────%s
]],
        lc,
        rc,
        lc,
        rc,
        lc,
        rc
      ),
      { i(1) }
    )
  ),

  s(
    "comm.f",
    fmt(
      string.format(
        [[
%s████████████████████████████%s
%s██ {1} ██%s
%s████████████████████████████%s
]],
        lc,
        rc,
        lc,
        rc,
        lc,
        rc
      ),
      { i(1) }
    )
  ),
}
