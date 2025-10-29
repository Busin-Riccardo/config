local function oilUrlToAbsoutePath(url)
  local path = url:gsub("oil://", "")
  path = path:gsub("file://", "")
  path = path:gsub("~", os.getenv("HOME"))
  return path
end

return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup({
      show_hidden = true,
      lsp_file_methods = {
        timeout_ms = 1000,
        autosave_changes = true,
      },
    })
    vim.api.nvim_create_autocmd("User", {
      desc = "Close buffer if the buffer file get's deleted from oil",
      pattern = "OilActionsPost",
      callback = function(arg)
        ---@type oil.Action[]
        local actions = arg.data.actions
        for _, action in ipairs(actions) do
          if action.type == "delete" then
            local buffers = vim.api.nvim_list_bufs()
            for _, buf in ipairs(buffers) do
              local name = vim.api.nvim_buf_get_name(buf)
              if name == oilUrlToAbsoutePath(action.url) then
                vim.api.nvim_buf_delete(buf, { force = true })
              end
            end
          end
        end
      end,
    })
  end,
  keys = {
    { "<leader>f.", vim.cmd.Oil, desc = "Oil" },
  },
}
