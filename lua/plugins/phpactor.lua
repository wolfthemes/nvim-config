return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.phpactor.setup({
      cmd = { vim.fn.stdpath("data") .. "/mason/bin/phpactor", "language-server" },
      on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      end,
    })
  end,
}

