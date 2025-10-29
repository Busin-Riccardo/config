return {
  { "marilari88/neotest-vitest" },
  { "fredrikaverpil/neotest-golang", version = "*" },
  {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-vitest", "neotest-golang", "rustaceanvim.neotest" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
