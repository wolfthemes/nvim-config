require "nvchad.mappings"

-- -- add yours here
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "NvimTree",
--   callback = function()
--     vim.keymap.set("n", "zM", function()
--       vim.cmd("NvimTreeCollapse")
--     end, { buffer = true, desc = "Collapse folders" })
--   end,
-- })

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Snacks explorer on <leader>e
map("n", "<leader>e", function()
  require("snacks").explorer()
end, { desc = "Snacks Explorer" })

-- Keep ZM to collapse folders if you're using snacks internal collapse (fallback)
map("n", "ZM", function()
  vim.cmd("NvimTreeCollapse") -- fallback for nvim-tree
end, { desc = "Collapse folders (fallback)" })

