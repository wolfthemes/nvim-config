return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- Format on save
    opts = require "configs.conform",
  },
}
