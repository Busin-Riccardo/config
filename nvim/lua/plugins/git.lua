return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>Neogit kind=split<cr>", desc = "Open Neogit" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      { "<leader>go", "<cmd>Gitsigns diffthis<cr>", desc = "Diff this" },
    },
  },
}
