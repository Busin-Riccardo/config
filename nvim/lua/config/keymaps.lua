-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

map("n", "<leader>wn", "<leader>wv", { desc = "New window" })
map("n", "<leader>xn", function()
  vim.diagnostic.jump({ count = 1, severity = vim.diagnostic.severity.ERROR })
end, { desc = "jump to next error" })
map("n", "<leader>xp", function()
  vim.diagnostic.jump({ count = -1, severity = vim.diagnostic.severity.ERROR })
end, { desc = "jump to previous error" })
map("n", "<leader>xs", vim.diagnostic.open_float, { desc = "show diagnostic" })
-- vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")
map("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "find help" })
