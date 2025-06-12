return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "kdheepak/lazygit.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
    cmd = "LazyGit",
  },
}
