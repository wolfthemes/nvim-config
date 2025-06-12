-- See https://github.com/mattn/emmet-vim

return {
  "mattn/emmet-vim",
  ft = { "html", "css", "scss", "sass", "javascriptreact", "typescriptreact" },
  init = function()
    -- vim.g.user_emmet_leader_key = "<C-e>"
    vim.g.user_emmet_settings = {
      css = {
        snippets = {
          -- p0 = "padding: 0;",
          -- m0 = "margin: 0;",
          -- dn = "display:none;",
          -- df = "display:flex;",
          -- posa = "position:abslute;"
        }
      }
    }
  end,
}
