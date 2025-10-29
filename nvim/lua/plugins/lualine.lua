return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c, 4)

    table.insert(opts.sections.lualine_c, 4, {
      "filename",
      file_status = true,
      path = 1,
    })
    return opts
  end,
}
