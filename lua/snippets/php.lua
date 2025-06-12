local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Your existing phpdoc snippet
  s("phpdoc", {
    t("/**"),
    t({"", " * "}), i(1, "Description"),
    t({"", " *"}),
    t({"", " * @param "}), i(2, "type"), t(" $"), i(3, "param"), t(" "), i(4, "description"),
    t({"", " * @return "}), i(5, "type"), t(" "), i(6, "description"),
    t({"", " */"}),
    i(0)
  }),

  -- Class snippet
  s("class", {
    t("class "), i(1, "ClassName"), t({" {", ""}),
    t({"    ", ""}), i(0),
    t({"", "}"})
  }),

  -- Function snippet
  s("func", {
    t("public function "), i(1, "functionName"), t("("), i(2), t(")"), t({" {", ""}),
    t("    "), i(0),
    t({"", "}"})
  }),

  -- Constructor snippet
  s("construct", {
    t({"public function __construct(", ""}),
    t("    "), i(1),
    t({") {", ""}),
    t("    "), i(0),
    t({"", "}"})
  })
}
